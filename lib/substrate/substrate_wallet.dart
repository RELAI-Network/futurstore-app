import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter/material.dart';
// import 'package:polkadart/polkadart.dart' show Provider, StateApi;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';

class SubstrateWallet {
  // Private constructor
  SubstrateWallet._privateConstructor();
  String? _mnemonic;
  KeyPair? _keyPair;
  bool _isConnected = false;

  // Static final instance
  static final SubstrateWallet _instance =
      SubstrateWallet._privateConstructor();

  // Static method
  static SubstrateWallet get instance {
    return _instance;
  }

  /// Generate Mnemonic. Use for test only entropy needs to be improved 🚧
  void _generateMnemonic() {
    _mnemonic = bip39.generateMnemonic();
  }

  /// Initialize wallet by generating a keypair from the mnemonic
  Future<void> init() async {
    _generateMnemonic();
    await _generateKeyPair();
    await storeMnemo(kWalletPrefix);
    _isConnected = true;
  }

  /// Generate Keypair from Mnemonic
  Future<void> _generateKeyPair() async {
    _keyPair = await KeyPair.sr25519.fromMnemonic(_mnemonic!);
  }

  String? getMnemonic() {
    return _mnemonic;
  }

  KeyPair? getKeyPair() {
    return _keyPair;
  }

  Future<void> storeMnemo(String key) async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    await storage.write(key: key, value: _mnemonic);
  }

  Future<void> retrieveMnemo(String key) async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    _mnemonic = await storage.read(key: key);
    if (_mnemonic != null) {
      _keyPair = await KeyPair.sr25519.fromMnemonic(_mnemonic!);
      _isConnected = true;
    } else {
      debugPrint('No MNEMOMIC FOUND OR STORED');
    }
  }

  Future<void> restoreWalletFromMnemonic(String mnemonic) async {
    _mnemonic = mnemonic;
    _keyPair = await KeyPair.sr25519.fromMnemonic(mnemonic);
    debugPrint('######## Wallet Successfuly restored ${_keyPair!.address}');
    await storeMnemo(kWalletPrefix);
    _isConnected = true;
  }

  Future<void> clearMnemo(String key) async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    await storage.delete(key: key);
  }

  Future<void> clearWallet() async {
    _mnemonic = null;
    _keyPair = null;
    await clearMnemo(kWalletPrefix);
    _isConnected = false;
  }

  // ignore: unnecessary_getters_setters
  bool get isConnected => _isConnected;

  set isConnected(bool value) {
    _isConnected = value;
  }
}
