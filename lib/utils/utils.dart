import 'package:flutter/foundation.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show WsProvider, StateApi;

class Utils {
  static void testConnection() async {
    try {
      final relaiNetwork = WsProvider(Uri.parse(RELAI_RPC));
      final api = StateApi(relaiNetwork);
      final runtimeVersion = await api.getRuntimeVersion();
      debugPrint(runtimeVersion.toJson().toString());
      debugPrint('✅ Connected to the Substrate node!');
      await relaiNetwork.disconnect();
    } catch (e) {
      debugPrint('❌ Failed to connect to the Substrate node: $e');
    }
  }
}
