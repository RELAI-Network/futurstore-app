import 'package:flutter/material.dart';
import '../utils/data.dart';
import '../models/game_model.dart';
import '../components/game_card.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});
  static const String label = "Games";

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  List<GameModel> gamelist = testGamesList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: gamelist.map((a) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GameCard(data: a,)
        );
      }).toList(),
    );
  }
}
