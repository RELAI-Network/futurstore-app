// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:futurstore/core/data/models/item_category.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/books/data/models/book.dart';

import '../repo/i_categories.dart';

class FirestoreCategoriesRepo extends ICategoriesRepo {
  FirestoreCategoriesRepo() {
    _categoriesService = itemsCategoriesReference;
    _appsService = appsReferences;
    _booksServices = booksReference;
  }

  late final ApplicationModelCollectionReference _appsService;
  late final ItemCategoryCollectionReference _categoriesService;
  late final BookModelCollectionReference _booksServices;

  @override
  Future<List<ApplicationModel>> fetchApps(ItemCategory category) async {
    try {
      return (await _appsService
              .whereCategoryId(isEqualTo: category.id)
              .whereAppType(isEqualTo: ApplicationType.app.name)
              .get())
          .docs
          .map((e) => e.data)
          .toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<BookModel>> fetchBooks(ItemCategory category) async {
    try {
      return (await _booksServices.get()).docs.map((e) => e.data).toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<ApplicationModel>> fetchGames(ItemCategory category) async {
    try {
      return (await _appsService
              .whereCategoryId(isEqualTo: category.id)
              .whereAppType(isEqualTo: ApplicationType.game.name)
              .get())
          .docs
          .map((e) => e.data)
          .toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<ItemCategory>> getAppsCategories() async {
    final categories = await getCategories();

    return categories.apps.toList();
  }

  @override
  Future<List<ItemCategory>> getBooksCategories() async {
    final categories = await getCategories();

    return categories.books.toList();
  }

  // Future<List<ItemCategory>> _getCategories() async {}
  @override
  Future<List<ItemCategory>> getCategories() async {
    try {
      return (await _categoriesService.get()).docs.map((e) => e.data).toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<ItemCategory>> getGamesCategories() async {
    final categories = await getCategories();

    return categories.games.toList();
  }
}
