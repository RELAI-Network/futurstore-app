import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:futurstore/features/home/pages/home_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FuturStore',
      // ignore: avoid_redundant_argument_values
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}
