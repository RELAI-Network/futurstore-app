import 'package:flutter/material.dart';
import 'package:futurstore/substrate/transactions.dart';
import '../substrate/substrate_wallet.dart';
import '../utils/constants.dart';
import '../utils/utils.dart';


class WalletGeneratorScreen extends StatefulWidget {
  @override
  _WalletGeneratorScreenState createState() => _WalletGeneratorScreenState();
}

class _WalletGeneratorScreenState extends State<WalletGeneratorScreen> {

  SubstrateWallet _wallet = SubstrateWallet.instance;

  TextEditingController _mnemonicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left:28, right: 28),
              child: TextField(
                controller: _mnemonicController,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(hintText: "Enter Mnemonic"),
              ),
            ),
            ElevatedButton(
              onPressed: _connectExistingWallet,
              child: Text('Connect Existing Wallet'),
            ),
            SizedBox(height: 20,),
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

            ElevatedButton(
              onPressed:() {
               var txs = Transactions();
               txs.transfer();
              },
              child: Text('Get Peers'),
            ),
          ],
        ),
      ),
    );
  }

  void _generateWallet() {
    _wallet.init();
    _wallet.retrieveMnemo("wallet");
  }

  void _connectExistingWallet(){
    String mnemonic = _mnemonicController.text;
    String? validationError = validateMnemonic(mnemonic);
    if (validationError != null) {
      // Display the error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(validationError)),
      );
      return;
    }
    // Restore the account using the mnemonic
    _wallet.restoreWalletFromMnemonic(mnemonic);

    // Store the restored account in the wallet
    _wallet.storeMnemo(WALLET_PREFIX);
  }

  String? validateMnemonic(String mnemonic) {
    List<String> words = mnemonic.split(' ');
    if (words.length != 12 && words.length != 24) {
      return 'Mnemonic must be 12 or 24 words';
    }
    return null;
  }

}
