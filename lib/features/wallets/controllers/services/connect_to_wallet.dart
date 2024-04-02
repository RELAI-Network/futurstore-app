import 'package:bip39/bip39.dart';
import 'package:dart_utils/dart_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:futurstore/features/wallets/controllers/providers/connected_wallet_provider.dart';
import 'package:futurstore/features/wallets/controllers/providers/users_service_provider.dart';
import 'package:futurstore/features/wallets/data/models/wallet_address.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/uniq_id_provider.dart';
import '../providers/user_uniq_identifier_provider.dart';
import '../providers/wallets_addresses_provider.dart';

part 'connect_to_wallet.g.dart';

@riverpod
Future<({String? error, bool success, WalletAddress? data})>
    connectToWalletFromMnemonic(
  ConnectToWalletFromMnemonicRef ref, {
  required String walletMnemonicOrSeed,
  String? walletName,
}) async {
  try {
    if (!validateMnemonic(walletMnemonicOrSeed)) {
      return (
        error: 'Mnemonic must be 12 or 24 words'.hardcoded,
        success: false,
        data: null,
      );
    }

    final keyPair = await KeyPair.sr25519.fromMnemonic(walletMnemonicOrSeed);

    final wallets = ref.read(walletsAddressesProvider);

    final wallet = WalletAddress(
      address: keyPair.address,
      name: (walletName == null || walletName.trim().isEmpty)
          ? 'Wallet #${wallets.value.length + 1}'
          : walletName,
      mnemonic: walletMnemonicOrSeed,
    );

    if (wallets.value.any((w) => w.address == wallet.address)) {
      return (
        error: 'Wallet already exists'.hardcoded,
        success: false,
        data: null,
      );
    }

    final deviceId = await ref.read(deviceUniqIdProvider);

    final uuid = await ref.read(userUniqIdentifierProvider);

    await ref.read(usersRepoProvider).addWallet(wallet, uuid, deviceId);

    await ref.read(
      connectToWalletProvider(
        wallet,
      ).future,
    );

    return (
      error: null,
      success: true,
      data: wallet,
    );
  } catch (e) {
    debugPrint(e.toString());

    return (
      error: e.toString(),
      success: false,
      data: null,
    );
  }
}
