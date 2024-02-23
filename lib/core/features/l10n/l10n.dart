import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// AppLocalization extension on BuildContext.
extension AppLocalizationsX on BuildContext {
  /// Shortcut to access internationalization strings.
  AppLocalizations get l10n => AppLocalizations.of(this);
}
