import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/views/loading_error_screen_view.dart';

import '../controllers/providers/categories_provider.dart';
import 'games_view.dart';

class GamesPage extends ConsumerWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(gamesCategoriesProvider);

    return categories.maybeWhen(
      data: (data) {
        if (data.isEmpty) {
          return LoadingErrorScreenView(
            error: context.l10n.noGamesCategoriesFound,
            retry: () {
              // ignore: unused_result
              ref.refresh(gamesCategoriesProvider);
            },
          );
        }

        return GamesView(
          categories: data,
        );
      },
      error: (error, _) => LoadingErrorScreenView(
        retry: () {
          // ignore: unused_result
          ref.refresh(gamesCategoriesProvider);
        },
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
