import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/features/home/pages/home_screen.dart';

import 'core/features/l10n/constants.dart';
import 'core/features/l10n/providers/app_lang_provider.dart';
import 'core/presentation/theming/configs/app_theme.dart';
import 'core/presentation/theming/providers/app_theme_notifier.dart';
import 'firebase_options.dart';

void main() async {
  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {
      //Use your custom logger, of just disable the debugPrint default behavior.
    };
  }

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Application theme
    final _ = ref.watch(appThemeProvider);

    //Application language
    final lang = ref.watch(appLangProvider);

    return MaterialApp(
      title: 'FuturStore',
      // ignore: avoid_redundant_argument_values
      debugShowCheckedModeBanner: true,
      locale: lang.value,
      // themeMode: theme.themeMode,
      themeMode: ThemeMode.light,
      theme: const AppTheme().themeData,
      darkTheme: const AppDarkTheme().themeData,
      home: const HomeScreen(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: appLocales.values.toList(),
    );
  }
}
