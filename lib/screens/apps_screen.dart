import 'package:flutter/material.dart';
import '../models/app_model.dart';
import '../utils/data.dart';
import '../components/app_card.dart';

class AppsScreen extends StatefulWidget {
  const AppsScreen({super.key});
  static const String label = "Apps";

  @override
  State<AppsScreen> createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {
  List<AppModel> applist = testAppsList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: applist.map((a) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: AppCard(appData: a,)
        );
      }).toList(),
    );
  }
}
