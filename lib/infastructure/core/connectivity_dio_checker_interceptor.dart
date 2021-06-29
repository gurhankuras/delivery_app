import 'package:delivery_app/domain/auth/auth_failure.dart';
import 'package:delivery_app/domain/core/i_network_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectivityDioChecker extends Interceptor {
  final INetworkConnectivity connectivity;

  ConnectivityDioChecker(this.connectivity);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final hasConnection = await connectivity.hasConnection();
    if (!hasConnection) {
      return handler.reject(DioError(
        requestOptions: options,
        error: AuthFailure.notConnected(),
      ));
    }
    handler.next(options);
  }
}
