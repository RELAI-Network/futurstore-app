import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/providers/app_lang_provider.dart';

import 'change_language_view.dart';

class ChangeLanguagePage extends ConsumerWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLang = ref.watch(appLangProvider);

    return ChangeLanguageView(
      onChanged: (value) {
        appLang.value = value;
      },
      selectedLocale: appLang.value,
    );
  }
}
