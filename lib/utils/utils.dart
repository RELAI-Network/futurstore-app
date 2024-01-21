import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show WsProvider, StateApi;

class Utils {
  static void testConnection() async {
    try {
      final relai_network = WsProvider(Uri.parse(RELAI_RPC));
      final api = StateApi(relai_network);
      final runtimeVersion = await api.getRuntimeVersion();
      print(runtimeVersion.toJson());
      print('✅ Connected to the Substrate node!');
      await relai_network.disconnect();

    } catch (e) {
      print('❌ Failed to connect to the Substrate node: $e');
    }
  }
}
