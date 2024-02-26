import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/games/data/models/game.dart';

abstract class IAppsRepo {
  Future<List<ApplicationModel>> getApps();

  Future<List<GameModel>> getGames();
}
