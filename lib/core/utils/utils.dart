import 'package:flutter/foundation.dart';
import 'package:futurstore/core/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show StateApi, WsProvider;

// ignore: avoid_classes_with_only_static_members
class Utils {
  static Future<void> testConnection() async {
    try {
      final relaiNetwork = WsProvider(Uri.parse(kRelaiRPC));
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
