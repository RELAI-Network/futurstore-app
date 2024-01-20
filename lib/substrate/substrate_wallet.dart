import 'package:bip39/bip39.dart' as bip39;
import 'package:polkadart_keyring/polkadart_keyring.dart';
import 'package:polkadart/polkadart.dart' show Provider, StateApi;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



class SubstrateWallet {
  String? _mnemonic;
  KeyPair? _keyPair;

  SubstrateWallet() {}

  /// Generate Mnemonic. Use for test only entropy needs to be improved 🚧
  void _generateMnemonic() {
    _mnemonic = bip39.generateMnemonic();
  }

  /// Initialize wallet by generating a keypair from the mnemonic
  Future<void> init() async {
    _generateMnemonic();
    await _generateKeyPair();
    storeMnemo("wallet");
  }

  /// Generate Keypair from Mnemonic
  Future<void> _generateKeyPair() async {
    var keyring = Keyring();
    keyring.ss58Format = 42; // Use Substrate's default address format
    _keyPair = await keyring.createKeyPairFromMnemonic(_mnemonic!);
  }

  String? getMnemonic() {
    return _mnemonic;
  }

  KeyPair? getKeyPair() {
    return _keyPair;
  }

  storeMnemo(String key) {
    AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    storage.write(key: key, value: _mnemonic);
  }

  retrieveMnemo(String key) async {
    AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    String? mnemo = await storage.read(key: key);
    print("### ### ### Retrieved Mnemo is : $mnemo");
  }



}
