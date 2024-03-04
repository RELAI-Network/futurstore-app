import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/views/loading_error_screen_view.dart';

import '../controllers/providers/games_state_provider.dart';
import 'games_grid_view.dart';

class GamesView extends ConsumerStatefulWidget {
  const GamesView({
    super.key,
  });

  @override
  ConsumerState<GamesView> createState() => _GamesViewState();
}

class _GamesViewState extends ConsumerState<GamesView>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
      ..addObserver(this)
      ..addPostFrameCallback(
        (_) async {
          ref.read(gamesStateProvider).onAppsRefreshRequested();
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    final appsState = ref.watch(gamesStateProvider);

    if (appsState.state.status == AppsStatus.loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (appsState.state.games.isEmpty) {
      return LoadingErrorScreenView(
        error: context.l10n.noGamesFound,
        retry: () async {
          ref.read(gamesStateProvider).onAppsRefreshRequested();
        },
      );
    }

    return GamesGridView(
      games: appsState.state.games,
    );
  }
}
