import 'package:bip39/bip39.dart' as bip39;
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';
import 'package:polkadart/polkadart.dart' show Provider, StateApi;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SubstrateWallet {
  String? _mnemonic;
  KeyPair? _keyPair;
  bool _isConnected = false;

  // Private constructor
  SubstrateWallet._privateConstructor();

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
    storeMnemo(WALLET_PREFIX);
    _isConnected = true;
  }

  /// Generate Keypair from Mnemonic
  _generateKeyPair() async {
    _keyPair = await KeyPair.sr25519.fromMnemonic(_mnemonic!);
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
    _mnemonic = await storage.read(key: key);
    if (_mnemonic != null) {
      _keyPair = await KeyPair.sr25519.fromMnemonic(_mnemonic!);
      _isConnected = true;
    } else {
      print("No MNEMOMIC FOUND OR STORED");
    }
  }

  Future<void> restoreWalletFromMnemonic(String mnemonic) async {
    _mnemonic = mnemonic;
    _keyPair = await KeyPair.sr25519.fromMnemonic(mnemonic);
    print("######## Wallet Successfuly restored ${_keyPair!.address}");
    storeMnemo(WALLET_PREFIX);
    _isConnected = true;
  }

  Future<void> clearMnemo(String key) async {
    AndroidOptions _getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    storage.delete(key: key);
  }

  void clearWallet() async {
    _mnemonic = null;
    _keyPair = null;
    await clearMnemo(WALLET_PREFIX);
    _isConnected = false;
  }

  bool get isConnected => _isConnected;

  void setIsConnected(bool value) {
    _isConnected = value;
  }
}
