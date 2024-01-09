import 'package:flutter/material.dart';
import 'package:polkadart/polkadart.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:polkadart_keyring/polkadart_keyring.dart';

void getRuntimeVersion() async {
  final polkadot = Provider.fromUri(Uri.parse('wss://rpc.polkadot.io'));
  final api = StateApi(polkadot);
  final runtimeVersion = await api.getRuntimeVersion();
  debugPrint('🤖${runtimeVersion.toJson()}');
}

// Generate Mnemonic without entropy: For testing purposes only 🚧
String generateMnemonicTest(){
  String mnemonic = bip39.generateMnemonic();
  debugPrint('😎 Mnemonic: ${mnemonic.toString()}');
  return mnemonic;
}

Future<KeyPair> generateKeypairFromMnemonic(String mnemonic) async{
  final keyring = Keyring();
  KeyPair keyPair = await keyring.createKeyPairFromMnemonic(mnemonic);
  return keyPair;
}

Future<KeyPair> generateRandomKeypairFromMnemonic() async{
  String mnemonic = generateMnemonicTest();
  final keyring = Keyring();
  keyring.ss58Format = 42;
  KeyPair keyPair = await keyring.createKeyPairFromMnemonic(mnemonic);
  debugPrint('🔑 New Keypair Address: ${keyPair..address}');
  return keyPair;
}