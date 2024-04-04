import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/wallets/controllers/providers/connected_wallet_provider.dart';
import 'package:futurstore/features/wallets/controllers/providers/wallets_addresses_provider.dart';
import 'package:futurstore/features/wallets/pages/account_page.dart';

import 'j_denticon_avatar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 2)],
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          Flexible(
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: context.l10n.searchAppsAndGames,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Consumer(
            builder: (_, ref, __) {
              final connectedWallet = ref.watch(connectedWalletProvider).value;

              if (connectedWallet == null) {
                return const SizedBox.shrink();
              }

              return InkWell(
                onTap: () async {
                  await _openAccountDialogBox(context);
                },
                child: JDenticonAvatar(address: connectedWallet.address),
              );
            },
          ),
        ],
      ),
    );
  }
}

Future<void> _openAccountDialogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      final l10n = context.l10n;

      return Consumer(
        builder: (_, ref, __) {
          final wallets = ref.watch(walletsAddressesProvider);

          final connectedWallet = ref.watch(connectedWalletProvider);

          if (wallets.initializing || connectedWallet.initializing) {
            return Material(
              color: context.theme.scaffoldBackgroundColor,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          }

          return AlertDialog(
            scrollable: true,
            contentPadding: EdgeInsets.zero,
            content: SizedBox(
              height: 440,
              width: context.width * 0.9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          context.pop(null);
                        },
                      ),
                    ],
                  ),
                  if (connectedWallet.value != null) ...[
                    ListTile(
                      title: Text(connectedWallet.value!.name),
                      subtitle: Text(
                        '''${connectedWallet.value!.address.substring(0, 3)}...${connectedWallet.value!.address.substring(connectedWallet.value!.address.length - 3)}''',
                      ),
                      leading: JDenticonAvatar(
                        address: connectedWallet.value!.address,
                      ),
                      trailing: Icon(
                        Icons.check_circle_rounded,
                        color: context.colorScheme.primary,
                      ),
                    ),
                    const Divider(thickness: 1),
                  ],
                  ...wallets.value.where((w) => w != connectedWallet.value).map(
                        (w) => ListTile(
                          onTap: () {
                            ref.read(connectedWalletProvider.notifier).value =
                                w;
                          },
                          title: Text(w.name),
                          subtitle: Text(
                            '''${w.address.substring(0, 3)}...${connectedWallet.value!.address.substring(connectedWallet.value!.address.length - 3)}''',
                          ),
                          leading: JDenticonAvatar(
                            address: w.address,
                          ),
                        ),
                      ),
                  const Divider(thickness: 1),
                  ListTile(
                    onTap: () async {
                      context.pop(null);

                      await context.pushTo(const AccountPage());
                    },
                    leading: const CircleAvatar(
                      child: Icon(
                        Icons.wallet_outlined,
                      ),
                    ),
                    title: Text(l10n.manageAccounts),
                  ),
                  const Divider(thickness: 1),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
