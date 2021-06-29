import 'package:delivery_app/domain/auth/i_token_cache_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class TokenDioInterceptor extends Interceptor {
  final ITokenCacheService tokenCacheService;

  TokenDioInterceptor({required this.tokenCacheService});

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final failureOrRefreshToken = await tokenCacheService.getRefreshToken();
    failureOrRefreshToken.fold(
      (failure) => null,
      (token) => options.headers['x-refresh'] = token,
    );

    final failureOrAccessToken = await tokenCacheService.getAccessToken();
    failureOrAccessToken.fold(
      (failure) => null,
      (token) => options.headers['Authorization'] = token,
    );

    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    final accessToken = response.headers.value('x-access-token');
    if (accessToken != null) {
      // ignore: unawaited_futures
      tokenCacheService.setAccessToken(accessToken);
    }
    super.onResponse(response, handler);
  }
}
