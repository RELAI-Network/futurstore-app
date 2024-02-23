import 'package:flutter/material.dart';
import 'package:futurstore/generated/relai_network/relai_network.dart';
import 'package:futurstore/substrate/substrate_wallet.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart' show StateApi;
import 'package:polkadart/provider.dart';

class Transactions {
  // Private constructor
  Transactions._privateConstructor() {
    _relaiNetworkProvider = WsProvider(Uri.parse(kRelaiRPC));
    _relaiNetwork = RelaiNetwork(_relaiNetworkProvider);
    _api = StateApi(_relaiNetworkProvider);
  }
  late WsProvider _relaiNetworkProvider;
  late RelaiNetwork _relaiNetwork;
  // ignore: unused_field
  late StateApi _api;
  final _wallet = SubstrateWallet.instance;

  // Static final instance
  static final Transactions _instance = Transactions._privateConstructor();

  // Static method
  static Transactions get instance {
    return _instance;
  }

  Future<BigInt> getBalance() async {
    final keyPair = _wallet.getKeyPair();
    final pk = keyPair?.publicKey.bytes;
    final accountInfo = await _relaiNetwork.query.system.account(pk!);
    debugPrint(
      '########-----Balance AccountInfo is : ${accountInfo.data.free}',
    );
    return accountInfo.data.free;
  }
}
