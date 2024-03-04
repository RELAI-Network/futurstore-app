import 'package:futurstore/core/data/models/item_category.dart';
import 'package:futurstore/features/apps/data/repo/i_categories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/sources/firestore_categories.dart';

part 'apps_categories_provider.g.dart';

@riverpod
Future<List<ItemCategory>> appsCategories(AppsCategoriesRef ref) {
  return ref.watch(categoriesRepoProvider).getAppsCategories();
}

final categoriesRepoProvider = Provider<ICategoriesRepo>(
  (ref) => FirestoreCategoriesRepo(),
);
