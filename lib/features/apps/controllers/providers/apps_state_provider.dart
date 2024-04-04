import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/utils/extensions/safe_change_notifier.dart';
import 'package:futurstore/features/apps/data/models/app.dart';

import '../../data/repo/i_apps.dart';
import '../../data/sources/firestore_apps.dart';

part 'apps_state.dart';

final appsRepoProvider = Provider<IAppsRepo>(
  (ref) => FirestoreAppsRepo(),
);

/// Feed state provider
final appsStateProvider = ChangeNotifierProvider<AppsStateNotifier>(
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
  AppsState _state = const AppsState.initial();

  /// Post state
  AppsState get state => _state;

  /// Set post state
  set state(AppsState value) {
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
  }

  Future<void> _updateApps() async {
    try {
      final response = await _appsService.getApps(
          // offset: 0,
          );

      // final updatedApps = [...state.apps, ...response];
      final updatedApps = response;
      const hasMoreApps = false;

      state = state.copyWith(
        status: AppsStatus.populated,
        apps: updatedApps,
        hasMoreApps: hasMoreApps,
      );
    } on Exception catch (error, _) {
      state = state
          .copyWith(status: AppsStatus.failure)
          .withError(error.toString());
    }
  }

  /// Feed refresh requested
  FutureOr<void> onAppsRefreshRequested() async {
    state = state.copyWith(status: AppsStatus.loading);

    try {
      final response = await _appsService.getApps(
          // offset: 0,
          );

      final refreshedApps = response;
      const hasMoreApps = false;

      state = state.copyWith(
        status: AppsStatus.populated,
        apps: refreshedApps,
        hasMoreApps: hasMoreApps,
      );
    } on Exception catch (error, _) {
      state = state
          .copyWith(status: AppsStatus.failure)
          .withError(error.toString());
    }
    return null;
  }
}
