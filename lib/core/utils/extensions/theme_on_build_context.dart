import 'package:flutter/material.dart';

import '../../presentation/theming/configs/app_theme.dart';

///ThemeExtensions on BuildContext
extension ThemeOnBuildContextExtension on BuildContext {
  /// Get the current app theme on current context.
  ThemeData get theme => Theme.of(this);

  /// Determine if current theme is dark.
  //bool get isDark => theme.brightness == Brightness.dark;
  bool get themeIsDark => theme.colorScheme.brightness == Brightness.dark;

  /// Get the actual app theme on current context.
  AppTheme get appTheme =>
      themeIsDark ? const AppDarkTheme() : const AppTheme();

  /// Get the text theme on current context.
  TextTheme get textTheme => theme.textTheme;

  /// Get the color scheme on current context.
  ColorScheme get colorScheme => theme.colorScheme;
}

///ThemeExtensions on ThemeData
extension ThemeDataEnhancement on ThemeData {
  /// Determine if current theme is dark.
  bool get isDark => brightness == Brightness.dark;
  // bool get isDark => colorScheme.brightness == Brightness.dark;
}

///ThemeExtensions on ThemeData
extension BrightnessEnhancement on Brightness {
  /// Add an iterable to the end of the iterable
  Brightness get inverse =>
      this == Brightness.dark ? Brightness.light : Brightness.dark;
}
