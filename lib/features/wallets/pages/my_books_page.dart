import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/presentation/views/loading_async_data_screen.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/wallets/controllers/services/assets.dart';

import 'my_books_view.dart';

class MyBooksPage extends ConsumerWidget {
  const MyBooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(myBooksProvider);

    if (books.isLoading) {
      return Material(
        color: context.theme.scaffoldBackgroundColor,
        child: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return books.build(
      builder: MyBooksView.new,
      retryOnError: () => ref.refresh(myBooksProvider),
      error: books.error?.toString(),
    );
  }
}
