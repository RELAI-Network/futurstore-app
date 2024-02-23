import 'package:flutter/material.dart';

import '../widgets/app_card.dart';
import '../../../models/app_model.dart';

class AppsScreen extends StatefulWidget {
  const AppsScreen({super.key});

  @override
  State<AppsScreen> createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <AppModel>[].map((a) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: AppCard(
            appData: a,
          ),
        );
      }).toList(),
    );
  }
}
