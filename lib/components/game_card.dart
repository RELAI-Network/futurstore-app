import 'package:flutter/material.dart';
import '../models/game_model.dart';
import '../screens/game_detail_screen.dart';

class GameCard extends StatelessWidget {
  final GameModel data;
  const GameCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetailScreen(data),
            ),
          );
        },
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 52.0), // You can adjust the size as needed
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(data.title!), // Assuming 'title' is a field in your AppModel
              ),
            ],
          ),
        )
    );
  }
}


