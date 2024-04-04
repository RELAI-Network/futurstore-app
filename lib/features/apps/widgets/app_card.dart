import 'package:flutter/material.dart';
import 'package:futurstore/features/games/widgets/game_card.dart';

import '../data/models/app.dart';

class AppCard extends StatelessWidget {
  const AppCard({required this.appData, super.key});

  final ApplicationModel appData;

  @override
  Widget build(BuildContext context) {
    return GameCard(data: appData);
  }
}
