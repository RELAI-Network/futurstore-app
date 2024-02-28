import 'package:flutter/widgets.dart';

import '../data/models/game.dart';
import '../widgets/game_card.dart';

class GamesGridView extends StatelessWidget {
  const GamesGridView({
    required this.games,
    this.controller,
    super.key,
  });

  final ScrollController? controller;

  final List<GameModel> games;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        controller: controller,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.65,
        children: games.map(
          (a) {
            return GameCard(
              data: a,
            );
          },
        ).toList(),
      ),
    );
  }
}
