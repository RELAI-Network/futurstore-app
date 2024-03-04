import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/utils/extensions/safe_change_notifier.dart';
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
  FutureOr<void> onAppsRequested() async {
    state = state.copyWith(status: AppsStatus.loading);
    return _updateApps();
  }

  /// Feed resumed
  FutureOr<void> onResumed() async {
    await _updateApps();
    return null;
  }

  Future<void> _updateApps() async {
    try {
      final response = await _appsService.getGames(
          // offset: 0,
          );

      state = state.copyWith(
        status: AppsStatus.populated,
        apps: [...state.games, ...response],
        hasMoreApps: false,
      );
    } on Exception catch (error, _) {
      state = state.copyWith(status: AppsStatus.failure);
      // addError(error, stackTrace);
    }
  }

  /// Feed refresh requested
  FutureOr<void> onAppsRefreshRequested() async {
    state = state.copyWith(status: AppsStatus.loading);

    try {
      final response = await _appsService.getGames(
          // offset: 0,
          );

      state = state.copyWith(
        status: AppsStatus.populated,
        apps: response,
        hasMoreApps: false,
      );
    } on Exception catch (error, _) {
      state = state.copyWith(status: AppsStatus.failure);
      // addError(error, stackTrace);
    }
    return null;
  }
}
