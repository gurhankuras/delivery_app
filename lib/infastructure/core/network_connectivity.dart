import 'package:connectivity/connectivity.dart';
import '../../domain/core/i_network_connectivity.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: INetworkConnectivity)
class NetworkConnectivity extends INetworkConnectivity {
  @override
  Future<bool> hasConnection() async =>
      await Connectivity().checkConnectivity() != ConnectivityResult.none;
}
