import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/wallets/controllers/providers/connected_wallet_provider.dart';

import '../controllers/providers/wallets_addresses_provider.dart';
import 'account_view.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallets = ref.watch(walletsAddressesProvider);

    final connectedWallet = ref.watch(localConnectedWallet);

    if (wallets.initializing || connectedWallet.initializing) {
      return Material(
        color: context.theme.scaffoldBackgroundColor,
        child: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return AccountView(
      wallets: wallets.value,
      connectedWallet: connectedWallet.value,
    );
  }
}
