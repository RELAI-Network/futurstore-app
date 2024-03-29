import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/local_storage/providers/app_local_setting_provider.dart';
import 'package:futurstore/core/features/local_storage/providers/local_storage_provider.dart';
import 'package:futurstore/features/wallets/controllers/providers/wallets_addresses_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/wallet_address.dart';

part 'connected_wallet_provider.g.dart';

final localConnectedWallet = ChangeNotifierProvider(
  (ref) => AppLocalSettingProvider<WalletAddress?>(
    ref.watch(localStorageProvider),
    defaultValue: null,
    fromStorage: (json) {
      if (json.isEmpty) {
        return null;
      }

      return WalletAddress.fromMap(jsonDecode(json) as Map<String, dynamic>);
    },
    localKey: '___wallet_connected_address___',
    toStorage: (address) {
      if (address == null) {
        return '';
      }

      return jsonEncode(address.toMap());
    },
  ),
);

@riverpod
Future<void> connectToWallet(
  ConnectToWalletRef ref,
  WalletAddress address,
) async {
  try {
    final wallets = ref.read(walletsAddressesProvider);

    while (wallets.initializing) {}

    if (wallets.value.any((wallet) => wallet.address == address.address)) {
      return;
    }

    Future.delayed(
      const Duration(seconds: 1),
      () {
        ref.read(localConnectedWallet.notifier).value = address;

        wallets.value = [...wallets.value, address];
      },
    );
  } catch (e) {
    rethrow;
  }
}
