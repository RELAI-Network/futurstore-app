import 'package:futurstore/core/models/item_category.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/books/models/book.dart';

abstract class ICategoriesRepo {
  Future<List<ApplicationModel>> fetchApps(ItemCategory category);

  Future<List<ApplicationModel>> fetchGames(ItemCategory category);

  Future<List<BookModel>> fetchBooks(ItemCategory category);

  Future<List<ItemCategory>> getAppsCategories();

  Future<List<ItemCategory>> getBooksCategories();

  Future<List<ItemCategory>> getCategories();

  Future<List<ItemCategory>> getGamesCategories();
}
