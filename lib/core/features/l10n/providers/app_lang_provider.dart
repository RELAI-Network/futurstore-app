import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/local_storage/providers/app_local_setting_provider.dart';
import 'package:futurstore/core/features/local_storage/providers/local_storage_provider.dart';

final appLangProvider = ChangeNotifierProvider(
  (ref) => AppLocalSettingProvider<Locale>(
    ref.watch(localStorageProvider),
    defaultValue: const Locale('en'),
    fromStorage: Locale.new,
    localKey: '__locale_code__',
    toStorage: (locale) => locale.languageCode,
  ),
);
