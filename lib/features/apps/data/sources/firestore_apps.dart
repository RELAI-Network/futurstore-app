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
      return _appsService.get().then(
            (value) => value.docs
                .map((e) => e.data)
                .where(
                  (app) =>
                      app.appType == ApplicationType.app.name &&
                      app.published &&
                      app.assetId != null,
                )
                .toList(),
          );
      // return (category == null
      //         ? (await _appsService
      //             .whereAppType(isEqualTo: ApplicationType.app.name)
      //             .get())
      //         : (await _appsService
      //             .whereCategoryId(isEqualTo: category.id)
      //             .whereAppType(isEqualTo: ApplicationType.app.name)
      //             .get()))
      //     .docs
      //     .map((e) => e.data)
      //     .toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<GameModel>> getGames({ItemCategory? category}) async {
    try {
      return _appsService.get().then(
            (value) => value.docs
                .map((e) => e.data)
                .where(
                  (app) =>
                      app.appType == ApplicationType.game.name &&
                      app.published &&
                      app.assetId != null,
                )
                .map((e) => e.toGame())
                .toList(),
          );
      // final docs = (category == null
      //         ? (await _appsService
      //             // .whereAppType(isEqualTo: ApplicationType.game.name)
      //             .get())
      //         : (await _appsService
      //             // .whereCategoryId(isEqualTo: category.id)
      //             // .whereAppType(isEqualTo: ApplicationType.game.name)
      //             .get()))
      //     .docs;

      // return docs.map((e) => e.data.toGame()).toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<void> addReview(
    String uuid,
    String deviceId,
    String address,
    String applicationId,
    String assetId,
    String hash,
    double rating,
    String? comment,
    String? userProfilePictureUrl,
  ) async {
    try {
      final docRef = _appsService.doc(applicationId);
      final application = await docRef.get();

      if (!application.exists) {
        throw Exception('App or game not found');
      }

      if (await haveAddedReview(applicationId, address)) return;

      await docRef.reviews.doc(address).set(
            AppReview(
              addedAt: DateTime.now(),
              address: address,
              applicationId: applicationId,
              assetId: assetId,
              comment: comment,
              deviceId: deviceId,
              id: address,
              hash: hash,
              userId: uuid,
              rating: rating,
              userProfilePictureUrl: userProfilePictureUrl,
            ),
          );
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<bool> haveAddedReview(
    String applicationId,
    String address,
  ) {
    try {
      return _appsService
          .doc(applicationId)
          .reviews
          .doc(address)
          .get()
          .then((value) {
        return value.exists;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<AppReview?> myReview(
    String applicationId,
    String address,
  ) {
    try {
      return _appsService
          .doc(applicationId)
          .reviews
          .doc(address)
          .get()
          .then((value) {
        return value.data;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<ApplicationModel?> findApp(String applicationId) {
    try {
      return _appsService.doc(applicationId).get().then((value) {
        return value.data;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
