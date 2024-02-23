import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/game.dart';

class GameDetailScreen extends StatefulWidget {
  const GameDetailScreen(this.data, {super.key});
  static const String id = 'game_details';
  final GameModel data;

  @override
  State<GameDetailScreen> createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const FlutterLogo(
                  size: 40,
                ),
                title: Text(widget.data.title),
                subtitle: Text(widget.data.description),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Install'),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 400),
                items: [
                  Image.network('https://picsum.photos/200/300?random=1'),
                  Image.network('https://picsum.photos/200/300?random=2'),
                  Image.network('https://picsum.photos/200/300?random=3'),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text('Version: X'),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Size: ${widget.data.gameSize!}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
