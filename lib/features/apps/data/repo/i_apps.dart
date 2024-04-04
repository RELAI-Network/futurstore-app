import 'package:futurstore/core/data/models/item_category.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/games/data/models/game.dart';

abstract class IAppsRepo {
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
  );

  Future<bool> haveAddedReview(
    String applicationId,
    String address,
  );

  Future<AppReview?> myReview(
    String applicationId,
    String address,
  );

  Future<List<ApplicationModel>> getApps({ItemCategory? category});

  Future<ApplicationModel?> findApp(String appId);

  Future<List<GameModel>> getGames({ItemCategory? category});
}
