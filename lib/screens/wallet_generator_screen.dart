import 'package:flutter/material.dart';
import '../substrate/substrate_wallet.dart';
import '../utils/utils.dart';


class WalletGeneratorScreen extends StatefulWidget {
  @override
  _WalletGeneratorScreenState createState() => _WalletGeneratorScreenState();
}

class _WalletGeneratorScreenState extends State<WalletGeneratorScreen> {

  SubstrateWallet _wallet = SubstrateWallet();

  void _generateWallet() {
    _wallet.init();
    _wallet.retrieveMnemo("wallet");

    print("### ### ### Public Key is : ${_wallet.getKeyPair()?.publicKey}");

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
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed:() {
                Utils.testConnection();
              },
              child: Text('Test Connection'),
            ),
          ],
        ),
      ),
    );
  }
}
