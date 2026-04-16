
import 'package:connectivity_plus/connectivity_plus.dart';



class ConnectionCheck {
  ConnectionCheck._();

  static final ConnectionCheck instance = ConnectionCheck._();

  final Connectivity _connectivity = Connectivity();

  Stream<bool> get stream {
    return _connectivity.onConnectivityChanged.map(
      (result) =>
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.mobile),
    );
  }

  Future<bool> checkNow() async {
    final result = await _connectivity.checkConnectivity();

    return result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.mobile);
  }
}