// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:futurstore/core/data/models/item_category.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/games/data/models/game.dart';

import '../repo/i_apps.dart';

class FirestoreAppsRepo extends IAppsRepo {
  FirestoreAppsRepo() {
    _appsService = appsReferences;
  }

  late final ApplicationModelCollectionReference _appsService;

  @override
  Future<List<ApplicationModel>> getApps({ItemCategory? category}) async {
    try {
      return (category == null
              ? (await _appsService
                  .whereAppType(isEqualTo: ApplicationType.app.name)
                  .get())
              : (await _appsService
                  .whereCategoryId(isEqualTo: category.id)
                  .whereAppType(isEqualTo: ApplicationType.app.name)
                  .get()))
          .docs
          .map((e) => e.data)
          .toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<GameModel>> getGames({ItemCategory? category}) async {
    try {
      final docs = (category == null
              ? (await _appsService
                  // .whereAppType(isEqualTo: ApplicationType.game.name)
                  .get())
              : (await _appsService
                  // .whereCategoryId(isEqualTo: category.id)
                  // .whereAppType(isEqualTo: ApplicationType.game.name)
                  .get()))
          .docs;

      return docs.map((e) => e.data.toGame()).toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
