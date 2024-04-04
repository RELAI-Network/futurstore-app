import 'package:flutter/widgets.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/apps/widgets/app_card.dart';

class AppsGridView extends StatelessWidget {
  const AppsGridView({
    required this.apps,
    this.controller,
    super.key,
  });

  final ScrollController? controller;

  final List<ApplicationModel> apps;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        controller: controller,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.59,
        children: apps.map(
          (a) {
            return AppCard(
              appData: a,
            );
          },
        ).toList(),
      ),
    );
  }
}
