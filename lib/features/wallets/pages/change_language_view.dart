import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/constants.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({
    required this.onChanged,
    super.key,
    this.selectedLocale,
  });

  final Locale? selectedLocale;

  final ValueChanged<Locale> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.walletTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          child: SingleChildScrollView(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              child: Column(
                children: [
                  DropdownMenu<Locale>(
                    label: Text(
                      l10n.accLangTitle,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: context.colorScheme.primary,
                          ),
                    ),
                    inputDecorationTheme: const InputDecorationTheme(
                      border: UnderlineInputBorder(),
                      contentPadding: EdgeInsets.zero,
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      helperStyle: TextStyle(color: Colors.black54),
                    ),
                    initialSelection: selectedLocale,
                    onSelected: (value) async {
                      if (value != null) {
                        onChanged(value);
                      }
                    },
                    trailingIcon: const Icon(Icons.arrow_drop_down),
                    width: context.width,
                    dropdownMenuEntries: appLocales.keys
                        .map(
                          (c) => DropdownMenuEntry<Locale>(
                            value: appLocales[c]!,
                            label: c,
                            trailingIcon: Row(
                              children: [
                                if (appLocales[c] == selectedLocale) ...[
                                  const SizedBox(
                                    width: AppSpacing.sm,
                                  ),
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: context.colorScheme.primary,
                                  ),
                                ],
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
