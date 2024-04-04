import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/apps/pages/apps_grid_view.dart';

class MyAppsGamesView extends StatelessWidget {
  const MyAppsGamesView(this.apps, {super.key});

  final List<ApplicationModel> apps;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.myAppsAndGames),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          child: AppsGridView(
            apps: apps,
          ),
        ),
      ),
    );
  }
}
