import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionCheck {
  static Future<bool> checkInternetConnection() async {
    bool isConnected = false;
    var connectionResult = await Connectivity().checkConnectivity();
    if (connectionResult.contains(ConnectivityResult.none)) {
      isConnected = false;
    } else {
      isConnected = true;
    }
    return isConnected;
  }
}
