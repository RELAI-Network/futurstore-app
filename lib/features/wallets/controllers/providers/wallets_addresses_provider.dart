import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/local_storage/providers/app_local_setting_provider.dart';
import 'package:futurstore/core/features/local_storage/providers/local_storage_provider.dart';
import 'package:futurstore/features/wallets/data/models/wallet_address.dart';

final walletsAddressesProvider = ChangeNotifierProvider(
  (ref) => AppLocalSettingProvider<List<WalletAddress>>(
    ref.watch(localStorageProvider),
    defaultValue: <WalletAddress>[],
    fromStorage: (json) {
      final map = jsonDecode(json) as List<dynamic>;

      return map
          .map(
            (e) => WalletAddress.fromMap(
              (e is String ? jsonDecode(e) : e) as Map<String, dynamic>,
            ),
          )
          .toList();
    },
    localKey: '___wallets_addresses___',
    toStorage: jsonEncode,
  ),
);
