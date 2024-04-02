import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/components/gap.dart';
import 'package:futurstore/core/presentation/components/j_denticon_avatar.dart';
import 'package:futurstore/core/presentation/components/linear_divider.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/core/utils/constants.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/core/utils/mixins/form_mixin.dart';
import 'package:futurstore/features/wallets/controllers/services/connect_to_wallet.dart';
import 'package:futurstore/features/wallets/controllers/services/transactions.dart';

import '../controllers/providers/connected_wallet_provider.dart';
import '../data/models/wallet_address.dart';

class AccountView extends StatelessWidget {
  const AccountView({required this.wallets, super.key, this.connectedWallet});

  final WalletAddress? connectedWallet;
  final List<WalletAddress> wallets;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.walletTitle),
          actions: wallets.isEmpty
              ? null
              : [
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: AppSpacing.xlg,
                    ),
                    onPressed: () async {
                      await showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (_) => Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: BottomSheet(
                            onClosing: () {},
                            builder: (_) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppSpacing.lg,
                                  vertical: AppSpacing.lg,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Gap(),
                                    Text(
                                      l10n.addNewWalletFormTitle,
                                      style: context.textTheme.titleLarge,
                                    ),
                                    _AddWalletForm(
                                      onSuccess: (wallet) async {
                                        context.pop(wallet);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          child: SingleChildScrollView(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              child: Column(
                children: [
                  if (connectedWallet != null)
                    _WalletTile(
                      connectedWallet!,
                      true,
                    ),
                  const Gap(),
                  ...(wallets.isEmpty
                      ? [
                          Text(
                            l10n.noWalletsInStorage,
                            style: context.textTheme.titleMedium,
                          ),
                          const Gap(),
                          LinearHorizontalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: context.width,
                          ),
                          const Gap(),
                          const _AddWalletForm(),
                        ]
                      : [
                          if (wallets.length > 1)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Others accounts'),
                                const Gap(),
                                ...wallets
                                    .where((w) => w != connectedWallet)
                                    .map(
                                      (e) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: AppSpacing.xxxs,
                                        ),
                                        child: Column(
                                          children: [
                                            _WalletTile(e),
                                            LinearHorizontalDivider(
                                              color: Colors.black,
                                              thickness: 1,
                                              width: context.width,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                              ],
                            ),
                        ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AddWalletForm extends ConsumerStatefulWidget {
  const _AddWalletForm({this.onSuccess});

  final OnSubmitWalletSucceededFunc? onSuccess;

  @override
  ConsumerState<_AddWalletForm> createState() => _AddWalletFormState();
}

typedef OnSubmitWalletFunc = Future<({String? error, bool success})> Function(
  String walletName,
  String walletMnemonicOrSeed,
);

typedef OnSubmitWalletSucceededFunc = Future<void> Function(WalletAddress);

class _AddWalletFormState extends ConsumerState<_AddWalletForm> with FormMixin {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Gap(
            height: AppSpacing.xlg,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Wallet Mnemonic/Seed * ',
            ),
            onChanged: (value) {
              onChange<String>('wallet_seed', value);
            },
            minLines: 3,
            maxLines: 6,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return l10n.pleaseEnterWalletMnemonicOrSeed;
              }

              return null;
            },
          ),
          const Gap(),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Wallet Name',
            ),
            onChanged: (value) {
              onChange<String>('wallet_name', value);
            },
          ),
          const Gap(),
          if (hasError)
            Column(
              children: [
                Text(
                  errorMessage,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.error,
                  ),
                ),
                const Gap(),
              ],
            ),
          SizedBox(
            width: double.infinity,
            child: loading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        loading = true;

                        try {
                          final result = await ref.watch(
                            connectToWalletFromMnemonicProvider(
                              walletName: value<String>('wallet_name')?.trim(),
                              walletMnemonicOrSeed:
                                  value<String>('wallet_seed')!.trim(),
                            ).future,
                          );

                          if (result.success) {
                            await widget.onSuccess?.call(result.data!);

                            loading = false;
                          } else {
                            loading = false;
                            error = result.error!;
                          }
                        } catch (e) {
                          loading = false;

                          debugPrint(e.toString());

                          error = l10n.unknownError;
                        }
                      }
                    },
                    child: Text(
                      l10n.connectToWalletBtnTex,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class _WalletTile extends ConsumerWidget {
  const _WalletTile(this.address, [this.connected = false]);

  final WalletAddress address;

  final bool connected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tile = ListTile(
      onTap: () {
        ref.read(connectedWalletProvider.notifier).value = address;
      },
      leading: CircleAvatar(
        maxRadius: 20,
        backgroundColor: context.colorScheme.primary,
        child: JDenticonAvatar(address: address.address),
      ),
      title: Text(
        address.name,
        style: context.textTheme.bodyLarge,
      ),
      // subtitle: Text(
      //   DateFormat.yMMMMEEEEd().format(address.addedAt),
      //   style: context.textTheme.bodyMedium?.copyWith(
      //     color: context.theme.colorScheme.onSurface.withOpacity(0.5),
      //   ),
      // ),
      subtitle: Text(
        '''${address.address.substring(0, 3)}...${address.address.substring(address.address.length - 3)}''',
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.theme.colorScheme.onSurface.withOpacity(0.5),
        ),
      ),
      trailing: connected
          ? null
          : const Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.grey,
            ),
    );

    if (!connected) return tile;

    return Material(
      elevation: 5,
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        title: tile,
        children: [
          Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.sm,
                ),
                child: FutureBuilder<BigInt>(
                  // ignore: discarded_futures
                  future: ref.read(getBalanceProvider(address).future),
                  builder: (_, data) {
                    if (data.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (data.hasError) {
                      return Text(data.error.toString());
                    }

                    return Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md,
                          ),
                          visualDensity: VisualDensity.compact,
                          leading: const Icon(Icons.account_balance_wallet),
                          title: Text(
                            'Balance',
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: context.theme.colorScheme.onSurface
                                  .withOpacity(0.5),
                            ),
                          ),
                          subtitle: Text(
                            '''${((data.data!.toDouble()) / 1000000000000000).toStringAsFixed(2)} $kRelaiTokenSymbol''',
                            style: context.textTheme.bodyLarge,
                          ),
                        ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.symmetric(
                        //     horizontal: AppSpacing.md,
                        //   ),
                        //   visualDensity: VisualDensity.compact,
                        //   leading: const Icon(Icons.date_range),
                        //   title: Text(
                        //     'Addet at',
                        //     style: context.textTheme.bodyLarge,
                        //   ),
                        //   subtitle: Text(
                        //     DateFormat.yMMMMEEEEd().format(address.addedAt),
                        //     style: context.textTheme.bodyMedium?.copyWith(
                        //       color: context.theme.colorScheme.onSurface
                        //           .withOpacity(0.5),
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
