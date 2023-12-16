import 'package:airstore/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:polkadart/polkadart.dart';
import 'package:polkadart/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'AIR STORE',
      home: HomeScreen(),
    );
  }
}
