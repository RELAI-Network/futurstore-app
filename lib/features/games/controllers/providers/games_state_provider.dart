import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/extensions/safe_change_notifier.dart';
import 'package:futurstore/core/models/item_category.dart';
import 'package:futurstore/features/apps/data/repo/i_apps.dart';
import 'package:futurstore/features/apps/data/sources/firestore_apps.dart';

import '../../data/models/game.dart';

part 'games_state.dart';

final appsRepoProvider = Provider<IAppsRepo>(
  (ref) => FirestoreAppsRepo(),
);

/// Feed state provider
final gamesStateProvider = ChangeNotifierProvider<AppsStateNotifier>(
  (ref) => AppsStateNotifier(ref.watch(appsRepoProvider)),
);

/// Feed state notifier class.
class AppsStateNotifier extends SafeChangeNotifier {
  /// AFeed state notifier class constructor.
  AppsStateNotifier(
    this._appsService,
  );

  final IAppsRepo _appsService;

  /// Post state
  GamesState _state = const GamesState.initial();

  /// Post state
  GamesState get state => _state;

  /// Set post state
  set state(GamesState value) {
    _state = value;
    notifyListeners();
  }

  /// Feed requested
  FutureOr<void> onAppsRequested(
    ItemCategory? category,
  ) async {
    state = state.copyWith(status: AppsStatus.loading);
    return _updateApps(category: category);
  }

  /// Feed resumed
  FutureOr<void> onResumed(
    ItemCategory? category,
  ) async {
    await Future.wait(
      state.apps.keys.map(
        (category) => _updateApps(category: category),
      ),
    );
    return null;
  }

  Future<void> _updateApps({
    ItemCategory? category,
  }) async {
    try {
      final categoryApps =
          category == null ? state.forYou : (state.apps[category] ?? []);

      final response = await _appsService.getGames(
        category: category,
        // offset: categoryFeed.length,
      );

      // Append fetched apps blocks to the list of apps blocks
      // for the given category.
      // final updatedCategoryFeed = [...categoryFeed, ...response.apps];
      final updatedCategoryApps = [...categoryApps, ...response];
      const hasMoreAppsForCategory = false;
      // response.totalCount > updatedCategoryFeed.length;

      if (category == null) {
        state = state.copyWith(
          status: AppsStatus.populated,
          forYou: updatedCategoryApps,
          hasMoreForYouApps: hasMoreAppsForCategory,
        );
      } else {
        state = state.copyWith(
          status: AppsStatus.populated,
          apps: Map<ItemCategory, List<GameModel>>.from(state.apps)
            ..addAll({category: updatedCategoryApps}),
          hasMoreApps: Map<ItemCategory, bool>.from(state.hasMoreApps)
            ..addAll({category: hasMoreAppsForCategory}),
        );
      }
    } on Exception catch (error, _) {
      state = state.copyWith(status: AppsStatus.failure);
      // addError(error, stackTrace);
    }
  }

  /// Feed refresh requested
  FutureOr<void> onAppsRefreshRequested(
    ItemCategory? category,
  ) async {
    state = state.copyWith(status: AppsStatus.loading);

    try {
      final response = await _appsService.getGames(
          // category: category,
          // offset: 0,
          );

      // final refreshedCategoryFeed = response.apps;
      final refreshedCategoryApps = response;
      const hasMoreAppsForCategory = false;
      // response.totalCount > refreshedCategoryFeed.length;

      if (category == null) {
        state = state.copyWith(
          status: AppsStatus.populated,
          forYou: refreshedCategoryApps,
          hasMoreForYouApps: hasMoreAppsForCategory,
        );
      } else {
        state = state.copyWith(
          status: AppsStatus.populated,
          apps: Map<ItemCategory, List<GameModel>>.of(state.apps)
            ..addAll({category: refreshedCategoryApps}),
          hasMoreApps: Map<ItemCategory, bool>.of(state.hasMoreApps)
            ..addAll({category: hasMoreAppsForCategory}),
        );
      }
    } on Exception catch (error, _) {
      state = state.copyWith(status: AppsStatus.failure);
      // addError(error, stackTrace);
    }
    return null;
  }
}
