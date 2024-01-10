import 'package:bip39/bip39.dart' as bip39;
import 'package:polkadart_keyring/polkadart_keyring.dart';

class SubstrateWallet {
  late String _mnemonic;
  late KeyPair _keyPair;

  SubstrateWallet() {
    _generateMnemonic();
  }

  /// Generate Mnemonic. Use for test only entropy needs to be improved 🚧
  void _generateMnemonic() {
    _mnemonic = bip39.generateMnemonic();
  }

  /// Initialize wallet by generating a keypair from the mnemonic
  Future<void> init() async {
    await _generateKeyPair();
  }

  /// Generate Keypair from Mnemonic
  Future<void> _generateKeyPair() async {
    var keyring = Keyring();
    keyring.ss58Format = 42; // Use Substrate's default address format
    _keyPair = await keyring.createKeyPairFromMnemonic(_mnemonic);
  }

  String getMnemonic() {
    return _mnemonic;
  }

  KeyPair getKeyPair() {
    return _keyPair;
  }
}
