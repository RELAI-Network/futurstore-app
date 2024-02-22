import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../screens/app_detail_screen.dart';

class AppCard extends StatelessWidget {
  final AppModel appData;
  const AppCard({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppDetailScreen(appData),
            ),
          );
        },
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                  size: 52.0), // You can adjust the size as needed
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(appData
                    .title!), // Assuming 'title' is a field in your AppModel
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(appData
                    .appSize!), // Assuming 'size' is a field in your AppModel
              ),
            ],
          ),
        ));
  }
}
