import 'package:futurstore/core/models/item_category.dart';
import 'package:futurstore/features/apps/controllers/providers/apps_categories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@riverpod
Future<List<ItemCategory>> gamesCategories(GamesCategoriesRef ref) {
  return ref.watch(categoriesRepoProvider).getGamesCategories();
}
