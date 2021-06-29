import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/credentials.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../domain/auth/i_token_cache_service.dart';
import '../../injection.dart';
import '../core/connectivity_dio_checker_interceptor.dart';
import '../core/token_dio_interceptor.dart';
import 'credentials_dto.dart';
import 'user_tokens_dto.dart';

// TODO: take care of common dioOptions

@Singleton(as: IAuthService)
class AuthService implements IAuthService {
  final Dio dio;
  final ITokenCacheService tokenService;

  AuthService({
    required this.dio,
    required this.tokenService,
  }) {
    kDebugMode ? dio.interceptors.add(PrettyDioLogger()) : null;
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

  // - app has been downloaded first time
  // - refresh token expired
  // - user logged out explicitly
  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required Credentials credentials}) async {
    try {
      final response = await dio.post(
        '/sessions',
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
    } catch (e) {
      return left(mapTryErrorToFailure(e));
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
      final response = await dio.get('/protected');

      if (response.statusCode == HttpStatus.forbidden) {
        return left(AuthFailure.tokenNotFound());
      } else if (response.statusCode != HttpStatus.ok) {
        return left(AuthFailure.serverError());
      }
      return right(unit);
    } catch (e) {
      return left(mapTryErrorToFailure(e));
    }
  }

  //TODO:  refactor, I may change the function's signature
  @override
  Future<void> logOut() async {
    try {
      final response = await dio.delete(
        '/sessions',
      );

      if (response.statusCode == HttpStatus.ok) {
        await tokenService.clear();
      }
    } on DioError catch (e) {
      //   if (e.error is NotConnected) {
      //     return left(e.error);
      //   }
      //   print(e);
      //   return left(AuthFailure.serverError());
      // } catch (e) {
      //   return left(AuthFailure.unexpected());
    }
  }
}

AuthFailure mapTryErrorToFailure(Object e) {
  if (e is DioError) {
    if (e.error is NotConnected) {
      return e.error;
    }
    return AuthFailure.serverError();
  }
  return AuthFailure.unexpected();
}

// error: true,
// logPrint: log.i,
// maxWidth: 200,
// request: true,
// requestBody: true,
// requestHeader: true,
// responseBody: true,
// responseHeader: true,
// compact: false,
