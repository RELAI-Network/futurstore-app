import 'package:futurstore/core/models/item_category.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/games/data/models/game.dart';

abstract class IAppsRepo {
  Future<List<ApplicationModel>> getApps({ItemCategory? category});

  Future<List<GameModel>> getGames({ItemCategory? category});
}
