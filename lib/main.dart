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
    return MaterialApp(
      title: 'AIR STORE',
      theme: ThemeData(
        colorScheme: ColorScheme
            .fromSeed(
            seedColor: Colors.purpleAccent,),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'AIR Store mobile application store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final String? polkadotInfo = "";
  bool isConnected = false;

  @override
  void initState() {
    getRuntimeVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Polkadot Connected',
            ),
            Text(
              '${isConnected}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      )
    );
  }


  void getRuntimeVersion() async {
      final polkadot = Provider.fromUri(Uri.parse('wss://rpc.polkadot.io'));
      final api = StateApi(polkadot);
      final runtimeVersion = await api.getRuntimeVersion();
      isConnected = await polkadot.isConnected();
      setState((){});
      debugPrint('🤖${runtimeVersion.toJson()}');
      await polkadot.disconnect();
  }
}
