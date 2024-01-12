import 'package:flutter/material.dart';

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
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(top: 32),
      child: Column(children: [
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            FlutterLogo(
              size: 70,
            ),
            Text('FuturStore',
              style: TextStyle(
                fontSize: 28,
                letterSpacing: 3
              ),
            )
          ],
        ),
              SizedBox(
                height: 4,
              ),
              Divider(thickness: 1),

        ListTile(
          onTap: () {},
          leading: Icon(Icons.apps ,size: 20, color: Colors.black54),
          title: Text('My Apps and Games'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.wallet,size: 20, color: Colors.black54),
          title: Text('Manage Wallets'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.settings,size: 20, color: Colors.black54),
          title: Text('Settings'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.language,size: 20, color: Colors.black54),
          title: Text('Language'),
        ),

      ]),
    )));
  }
}
