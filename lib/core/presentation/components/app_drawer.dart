import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/wallets/pages/account_page.dart';
import 'package:futurstore/features/wallets/pages/change_language_page.dart';
import 'package:futurstore/features/wallets/pages/my_apps_games_page.dart';
import 'package:futurstore/features/wallets/pages/my_books_page.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 70,
                    color: context.colorScheme.primary,
                  ),
                  const Text(
                    'FuturStore',
                    style: TextStyle(fontSize: 28, letterSpacing: 3),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Divider(thickness: 1),
              ListTile(
                onTap: () async {
                  await context.pushTo(const MyAppsGamesPage());
                },
                leading:
                    const Icon(Icons.apps, size: 20, color: Colors.black54),
                title: Text(l10n.myAppsAndGames),
              ),
              ListTile(
                onTap: () async {
                  await context.pushTo(const MyBooksPage());
                },
                leading:
                    const Icon(Icons.book, size: 20, color: Colors.black54),
                title: Text(l10n.myBookAssets),
              ),
              ListTile(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute<Object>(
                      builder: (context) => const AccountPage(),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.wallet,
                  size: 20,
                  color: Colors.black54,
                ),
                title: Text(l10n.manageWalletsTitle),
              ),
              // ListTile(
              //   onTap: () {},
              //   leading:
              //       const Icon(Icons.settings, size: 20, color:
              // Colors.black54),
              //   title: const Text('Settings'),
              // ),
              ListTile(
                onTap: () async {
                  await context.pushTo(const ChangeLanguagePage());
                },
                leading: const Icon(
                  Icons.language,
                  size: 20,
                  color: Colors.black54,
                ),
                title: Text(l10n.accLangTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
