import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/connected_wallet_provider.dart';

part 'tokens.g.dart';

@riverpod
Future<void> claimTokens(ClaimTokensRef ref) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final _ = await http.get(
      Uri.parse(
        'https://faucet-tskg7nm5aa-uc.a.run.app?requester=${wallet.value!.address}',
      ),
      // headers: {'requester': wallet.value!.address},
    );

    debugPrint('Claimed tokens');
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
