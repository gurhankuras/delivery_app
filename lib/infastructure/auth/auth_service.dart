import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/core/general_failures.dart';
import 'package:delivery_app/domain/core/i_network_connectivity.dart';
import 'package:delivery_app/domain/statistics/statistics_failure.dart';
import 'package:delivery_app/infastructure/core/network_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/credentials.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../domain/auth/i_token_cache_service.dart';
import 'credentials_dto.dart';
import 'user_tokens_dto.dart';

BaseOptions _defaultDioOptions = BaseOptions(
  baseUrl: _baseUrl,
  receiveDataWhenStatusError: true,
  receiveTimeout: 3000,
  connectTimeout: 3000,
  sendTimeout: 3000,
);

int PORT = 4000;
String _baseUrl = Platform.isAndroid
    ? 'http://10.0.2.2:$PORT/api'
    : 'http://localhost:$PORT/api';

// TODO: REFACTOR these interceptors and take care of common dioOptions

@Singleton(as: IAuthService)
class AuthService implements IAuthService {
  Dio dio;
  final ITokenCacheService tokenService;
  final INetworkConnectivity connectivity;

  AuthService({
    required ITokenCacheService tokenService,
    required INetworkConnectivity connectivity,
  })  : dio = Dio(_defaultDioOptions),
        tokenService = tokenService,
        connectivity = connectivity {
    kDebugMode ? dio.interceptors.add(PrettyDioLogger(
        // error: true,
        // logPrint: log.i,
        // maxWidth: 200,
        // request: true,
        // requestBody: true,
        // requestHeader: true,
        // responseBody: true,
        // responseHeader: true,
        // compact: false,
        )) : null;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final hasConnection = await connectivity.hasConnection();
        if (!hasConnection) {
          return handler.reject(DioError(
            requestOptions: options,
            error: AuthFailure.notConnected(),
          ));
        }
        handler.next(options);
      },
    ));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final failureOrRefreshToken = await tokenService.getRefreshToken();
          failureOrRefreshToken.fold(
            (failure) => null,
            (token) => options.headers['x-refresh'] = token,
          );

          final failureOrAccessToken = await tokenService.getAccessToken();
          failureOrAccessToken.fold(
            (failure) => null,
            (token) => options.headers['Authorization'] = token,
          );

          handler.next(options);
        },
        onResponse: (e, handler) {
          final accessToken = e.headers.value('x-access-token');
          if (accessToken != null) {
            tokenService.setAccessToken(accessToken);
          }
          handler.next(e);
        },
      ),
    );
  }

  // when
  // - app has been downloaded first time
  // or
  // - refresh token expired
  // or
  // - user logged out explicitly
  // We going to use this in these circumstances

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required Credentials credentials}) async {
    try {
      // var json = CredentialsDTO.fromDomain(credentials).toJson();
      // json['name'] = 'gurhan';
      // json['name'] = 'gurhan';

      final response = await dio.post(
        '$_baseUrl/sessions',
        data: CredentialsDTO.fromDomain(credentials).toJson(),
      );

      if (response.statusCode != HttpStatus.ok) {
        return left(AuthFailure.serverError());
      }
      if (response.data is Map) {
        final tokens = UserTokensDTO.fromJson(response.data).toDomain();
        // ignore: unawaited_futures
        tokenService.setAccessToken(tokens.accessToken);
        // ignore: unawaited_futures
        tokenService.setRefreshToken(tokens.refreshToken);
        return right(unit);
      }
      return left(AuthFailure.serverError());
    } on DioError catch (e) {
      if (e.error is NotConnected) {
        return left(e.error);
      }
      print(e);

      return left(AuthFailure.unexpected());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({required Credentials credentials}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> getUserSignedIn() async {
    try {
      final response = await dio.get(
        '$_baseUrl/protected',
      );

      if (response.statusCode == HttpStatus.forbidden) {
        return left(AuthFailure.tokenNotFound());
      } else if (response.statusCode != HttpStatus.ok) {
        return left(AuthFailure.serverError());
      }
      return right(unit);
    } on DioError catch (e) {
      if (e.error is NotConnected) {
        return left(e.error);
      }
      print(e);
      return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }

  //TODO:  delete session
  @override
  Future<void> logOut() async {
    await tokenService.clear();
  }
}
