import 'package:flutter/material.dart';
import '../substrate/substrate_wallet.dart';


class WalletGeneratorScreen extends StatefulWidget {
  @override
  _WalletGeneratorScreenState createState() => _WalletGeneratorScreenState();
}

class _WalletGeneratorScreenState extends State<WalletGeneratorScreen> {

  SubstrateWallet _wallet = SubstrateWallet();

  void _generateWallet() {
    _wallet.init();
    setState(() {});
    _wallet.retrieveMnemo("wallet");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_wallet.getMnemonic() != null) Text('Mnemonic: ${_wallet.getMnemonic()}'),
            if (_wallet.getKeyPair()?.publicKey != null) Text('Public Key: ${_wallet.getKeyPair()?.publicKey}'),
            ElevatedButton(
              onPressed: _generateWallet,
              child: Text('Generate Wallet'),
            ),
          ],
        ),
      ),
    );
  }
}
