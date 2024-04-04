import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/presentation/views/loading_async_data_screen.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/wallets/controllers/services/assets.dart';

import 'my_apps_games_view.dart';

class MyAppsGamesPage extends ConsumerWidget {
  const MyAppsGamesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appsGames = ref.watch(myAppsGamesProvider);

    if (appsGames.isLoading) {
      return Material(
        color: context.theme.scaffoldBackgroundColor,
        child: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return appsGames.build(
      builder: MyAppsGamesView.new,
      retryOnError: () => ref.refresh(myAppsGamesProvider),
      error: appsGames.error?.toString(),
    );
  }
}
