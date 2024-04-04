import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/wallet_address.dart';
import '../providers/network/relai_network_providers.dart';
import '../providers/network/utils_provider.dart';

part 'transactions.g.dart';

@riverpod
Future<BigInt> getBalance(
  GetBalanceRef ref,
  WalletAddress wallet,
) async {
  try {
    final publicKey = await ref.read(publicKeyBytesFromMnemonicFuncProvider)(
      wallet.mnemonic,
    );

    final accountInfo =
        await ref.read(relaiNetworkProvider).query.system.account(publicKey);

    return accountInfo.data.free;
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
