import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';

typedef PublicKeyBytesFromMnemonicFunc = Future<List<int>> Function(
  String mnemonic,
);

typedef PublicKeyFromMnemonicFunc = Future<PublicKey> Function(String mnemonic);

typedef KeyPairFromMnemonicFunc = Future<KeyPair> Function(String mnemonic);

final publicKeyBytesFromMnemonicFuncProvider =
    Provider<PublicKeyBytesFromMnemonicFunc>(
  (ref) => (mnemonic) async =>
      (await ref.read(publicKeyFromMnemonicFuncProvider)(mnemonic)).bytes,
);

final publicKeyFromMnemonicFuncProvider = Provider<PublicKeyFromMnemonicFunc>(
  (ref) => (mnemonic) async =>
      (await ref.read(keyPairFromMnemonicFuncProvider)(mnemonic)).publicKey,
);

final keyPairFromMnemonicFuncProvider = Provider<KeyPairFromMnemonicFunc>(
  (ref) => (mnemonic) async => KeyPair.sr25519.fromMnemonic(mnemonic),
);
