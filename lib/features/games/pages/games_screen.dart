import 'package:flutter/material.dart';
import 'package:futurstore/features/games/models/game.dart';

import '../widgets/game_card.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});
  static const String label = 'Games';

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <GameModel>[].map((a) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: GameCard(
            data: a,
          ),
        );
      }).toList(),
    );
  }
}
