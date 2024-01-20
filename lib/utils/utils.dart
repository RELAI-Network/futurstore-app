import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show WsProvider, StateApi;

class Utils {
  static void testConnection() async {
    try {
      final relai_network = WsProvider(Uri.parse(RELAI_RPC));
      await relai_network.connect();
      print('✅ Connected to the Substrate node!');
      // You can now use the wsProvider to interact with the node
    } catch (e) {
      print('❌ Failed to connect to the Substrate node: $e');
    }
  }
}
