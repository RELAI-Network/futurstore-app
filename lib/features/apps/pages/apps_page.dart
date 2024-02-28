import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/views/loading_error_screen_view.dart';
import 'package:futurstore/features/apps/controllers/providers/apps_categories_provider.dart';
import 'package:futurstore/features/apps/pages/apps_view.dart';

class AppsPage extends ConsumerWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(appsCategoriesProvider);

    return categories.maybeWhen(
      data: (data) {
        if (data.isEmpty) {
          return LoadingErrorScreenView(
            error: context.l10n.noAppCategoriesFound,
            retry: () {
              // ignore: unused_result
              ref.refresh(appsCategoriesProvider);
            },
          );
        }

        return AppsView(
          categories: data,
        );
      },
      error: (error, _) => LoadingErrorScreenView(
        retry: () {
          // ignore: unused_result
          ref.refresh(appsCategoriesProvider);
        },
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
