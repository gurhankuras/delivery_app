import 'package:dartz/dartz.dart';
import 'package:delivery_app/application/auth/config.dart';
import 'package:delivery_app/domain/auth/i_token_cache_service.dart';
import 'package:delivery_app/domain/core/general_failures.dart';
import 'package:delivery_app/infastructure/services/cache_manager.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ITokenCacheService)
class TokenCacheService extends ITokenCacheService {
  final CacheService cacheService;

  TokenCacheService({required this.cacheService});

  @override
  Future<Either<GeneralFailure, String>> getAccessToken() {
    return cacheService.getString(TokenKeys.ACCESS_TOKEN_KEY);
  }

  @override
  Future<Either<GeneralFailure, String>> getRefreshToken() async {
    return cacheService.getString(TokenKeys.REFRESH_TOKEN_KEY);
  }

  @override
  Future<Either<GeneralFailure, Unit>> setAccessToken(String token) {
    cacheService.setString(TokenKeys.ACCESS_TOKEN_KEY, token);
    return Future.value(right(unit));
  }

  @override
  Future<Either<GeneralFailure, Unit>> setRefreshToken(String token) {
    cacheService.setString(TokenKeys.REFRESH_TOKEN_KEY, token);
    return Future.value(right(unit));
  }

  @override
  Future<bool> clear() async {
    final success = await Future.wait([
      cacheService.remove(TokenKeys.ACCESS_TOKEN_KEY),
      cacheService.remove(TokenKeys.REFRESH_TOKEN_KEY)
    ]);
    return success.every((s) => s);
  }
}
