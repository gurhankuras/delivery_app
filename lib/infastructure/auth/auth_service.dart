import 'dart:io';

import 'package:delivery_app/application/auth/config.dart';
import 'package:delivery_app/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/auth/credentials.dart';
import 'package:delivery_app/domain/auth/i_auth_service.dart';
import 'package:delivery_app/infastructure/auth/credentials_dto.dart';
import 'package:delivery_app/infastructure/auth/user_tokens_dto.dart';
import 'package:delivery_app/infastructure/services/cache_manager.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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

// TODO: REFACTOR
class AuthService implements IAuthService {
  Dio dio;
  final CacheService cacheService;

  AuthService({
    BaseOptions? dioOptions,
    required CacheService cacheService,
  })  : dio = Dio(dioOptions ?? _defaultDioOptions),
        cacheService = cacheService {
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final failureOrRefreshToken =
              await cacheService.getString(TokenKeys.REFRESH_TOKEN_KEY);
          failureOrRefreshToken.fold((failure) => null,
              (token) => options.headers['x-refresh'] = token);

          final failureOrAccessToken =
              await cacheService.getString(TokenKeys.ACCESS_TOKEN_KEY);
          failureOrAccessToken.fold((failure) => null,
              (token) => options.headers['Authorization'] = token);

          handler.next(options);
        },
        onResponse: (e, handler) {
          final accessToken = e.headers.value('x-access-token');
          if (accessToken != null) {
            cacheService.setString(TokenKeys.ACCESS_TOKEN_KEY, accessToken);
          }
          handler.next(e);
        },
      ),
    );
  }

  // when we have no accessToken and refreshToken in cache
  // so, when either
  // - app has downloaded first time
  // or
  // - refresh token expired
  // or
  // - user logged out explicitly
  // We going to use this in this circumstances

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
        cacheService.setString(
          TokenKeys.ACCESS_TOKEN_KEY,
          tokens.accessToken,
        );

        log.i(tokens);
        // ignore: unawaited_futures
        cacheService.setString(
          TokenKeys.REFRESH_TOKEN_KEY,
          tokens.refreshToken,
        );
        return right(unit);
      }
      return left(AuthFailure.serverError());
    } on DioError catch (e) {
      print(e);
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({required Credentials credentials}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  // - we have valid refresh token but invalid access token
  // - then we going to use this
  // @override
  // Future<Either<AuthFailure, Unit>> refreshAccessToken() async {
  //   try {
  //     final response = await dio.post(
  //       '$_baseUrl/refresh',
  //     );

  //     if (response.statusCode != HttpStatus.ok) {
  //       return left(AuthFailure.serverError());
  //     }
  //     log.i(response.data);
  //     final data = response.data;
  //     if (data is Map) {
  //       final accessToken = data['accessToken'];
  //       // ignore: unawaited_futures
  //       cacheService.setString(
  //         TokenKeys.ACCESS_TOKEN_KEY,
  //         accessToken,
  //       );

  //       return right(unit);
  //     }
  //     return left(AuthFailure.serverError());
  //   }
  //   // return left(AuthFailure.serverError());
  //   on DioError catch (e) {
  //     print(e);
  //     return left(AuthFailure.serverError());
  //   }
  // }

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
      print(e);
      return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }
  // return left(AuthFailure.serverError());

  // @override
  // Future<Either<AuthFailure, Unit>> refreshAccessToken() {
  //   // TODO: implement refreshAccessToken
  //   throw UnimplementedError();
  // }
  // }
}
