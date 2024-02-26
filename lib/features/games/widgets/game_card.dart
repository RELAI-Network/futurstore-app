import 'package:flutter/material.dart';
import 'package:futurstore/core/extensions/navigator.dart';
import 'package:futurstore/features/games/data/models/game.dart';

import '../pages/game_detail_screen.dart';

class GameCard extends StatelessWidget {
  const GameCard({required this.data, super.key});
  final GameModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.pushTo(GameDetailScreen(data));
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
              data.logoImageSquareUrl,
              cacheHeight: 52,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                data.name,
              ), // Assuming 'title' is a field in your AppModel
            ),
          ],
        ),
      ),
    );
  }
}
