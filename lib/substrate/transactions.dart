import 'package:futurstore/generated/relai_network/relai_network.dart';
import 'package:futurstore/generated/relai_network/types/frame_system/account_info.dart';
import 'package:futurstore/substrate/substrate_wallet.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show StateApi;
import 'package:polkadart/provider.dart';

class Transactions {
  late WsProvider _relai_network_provider;
  late RelaiNetwork _relai_network;
  // ignore: unused_field
  late StateApi _api;
  final _wallet = SubstrateWallet.instance;

  // Private constructor
  Transactions._privateConstructor() {
    _relai_network_provider = WsProvider(Uri.parse(RELAI_RPC));
    _relai_network = RelaiNetwork(_relai_network_provider);
    _api = StateApi(_relai_network_provider);
  }

  // Static final instance
  static final Transactions _instance = Transactions._privateConstructor();

  // Static method
  static Transactions get instance {
    return _instance;
  }

  Future<BigInt> getBalance() async {
    var pk = _wallet.getKeyPair()?.publicKey.bytes;
    AccountInfo? accountInfo = await _relai_network.query.system.account(pk!);
    print("########-----Balance AccountInfo is : ${accountInfo.data.free}");
    return accountInfo.data.free;
  }
}
