import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/app_model.dart';

class AppDetailScreen extends StatefulWidget {
  static const String id = "appdetail";
  final AppModel appData;

  const AppDetailScreen(this.appData);

  @override
  State<AppDetailScreen> createState() => _AppDetailScreenState();
}

class _AppDetailScreenState extends State<AppDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: FlutterLogo(size: 40,),
                title: Text(widget.appData.title!),
                subtitle: Text(widget.appData.description!),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Install'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Version: X'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Size: ${widget.appData.appSize!}'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

