import 'package:flutter/material.dart';

import '../../features/wallets/pages/wallet_generator_screen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
              const Row(
                children: [
                  FlutterLogo(
                    size: 70,
                  ),
                  Text(
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
                onTap: () {},
                leading:
                    const Icon(Icons.apps, size: 20, color: Colors.black54),
                title: const Text('My Apps and Games'),
              ),
              ListTile(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute<Object>(
                      builder: (context) => const WalletManagerScreen(),
                    ),
                  );
                },
                leading:
                    const Icon(Icons.wallet, size: 20, color: Colors.black54),
                title: const Text('Manage Wallets'),
              ),
              ListTile(
                onTap: () {},
                leading:
                    const Icon(Icons.settings, size: 20, color: Colors.black54),
                title: const Text('Settings'),
              ),
              ListTile(
                onTap: () {},
                leading:
                    const Icon(Icons.language, size: 20, color: Colors.black54),
                title: const Text('Language'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
