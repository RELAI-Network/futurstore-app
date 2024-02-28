import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/local_storage/providers/local_storage_provider.dart';
import 'package:local_storage/local_storage.dart';

import '../configs/app_theme.dart';

/// Key for theme mode in local storage
const kThemeMode = '__themeMode__';

///App theme notifier.
class AppThemeNotifier with ChangeNotifier {
  /// Default constructor
  AppThemeNotifier(this._storage) {
    unawaited(_init());
  }

  Future<void> _init() async {
    await _storage.init();

    final themeMode = await _storage.getString('__themeMode__');

    try {
      _themeMode = ThemeMode.values.byName(themeMode ?? ThemeMode.system.name);
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  final LocalStorage _storage;

  ThemeMode _themeMode = ThemeMode.system;

  ///Actual theme mode.
  ThemeMode get themeMode => _themeMode;

  /// Change theme mode to dark.
  void darkMode() {
    themeMode = ThemeMode.dark;
  }

  /// Change theme mode to light.
  void lightMode() {
    themeMode = ThemeMode.dark;
  }

  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
    unawaited(_storage.setString('__themeMode__', themeMode.name));
  }

  /// Get theme data
  ThemeData get theme {
    switch (themeMode) {
      case ThemeMode.system:
        return const AppTheme().themeData;
      case ThemeMode.dark:
        return const AppDarkTheme().themeData;
      case ThemeMode.light:
        return const AppTheme().themeData;
    }
  }

  ///
  void toggleMode() {
    if (themeMode == ThemeMode.system) {
      themeMode = ThemeMode.dark;
    } else if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
    } else if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    }
  }
}

///App theme provider.
final appThemeProvider = ChangeNotifierProvider(
  (ref) => AppThemeNotifier(ref.watch(localStorageProvider)),
);
