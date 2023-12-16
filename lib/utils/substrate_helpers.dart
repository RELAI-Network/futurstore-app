import 'package:flutter/material.dart';
import 'package:polkadart/polkadart.dart';

void getRuntimeVersion() async {
  final polkadot = Provider.fromUri(Uri.parse('wss://rpc.polkadot.io'));
  final api = StateApi(polkadot);
  final runtimeVersion = await api.getRuntimeVersion();
  debugPrint('🤖${runtimeVersion.toJson()}');
}