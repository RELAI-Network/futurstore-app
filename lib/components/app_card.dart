import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../screens/app_detail_screen.dart';

class AppCard extends StatelessWidget {
  const AppCard({required this.appData, super.key});
  final AppModel appData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute<Object>(
            builder: (context) => AppDetailScreen(appData),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const FlutterLogo(
              size: 52,
            ), // You can adjust the size as needed
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                appData.title!,
              ), // Assuming 'title' is a field in your AppModel
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                appData.appSize!,
              ), // Assuming 'size' is a field in your AppModel
            ),
          ],
        ),
      ),
    );
  }
}
