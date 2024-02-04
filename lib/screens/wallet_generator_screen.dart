import 'package:flutter/material.dart';
import 'package:futurstore/substrate/transactions.dart';
import '../substrate/substrate_wallet.dart';
import '../utils/constants.dart';
import '../utils/utils.dart';

class WalletManagerScreen extends StatefulWidget {
  @override
  _WalletManagerScreenState createState() => _WalletManagerScreenState();
}

class _WalletManagerScreenState extends State<WalletManagerScreen> {
  final SubstrateWallet _wallet = SubstrateWallet.instance;
  final TextEditingController _mnemonicController = TextEditingController();
  final Transactions _transactions = Transactions.instance;
  bool _isLoading = false; // Assume wallet is initially not loading
  BigInt? _balance;

  @override
  void initState() {
    super.initState();
    _wallet.retrieveMnemo(WALLET_PREFIX).then((_) async {

      _balance = await _transactions.getBalance();

      setState(() {});
    }).catchError((error) {
      print("Mnemo removed or not created yet");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Management"),
        actions: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: _wallet.isConnected ? Colors.green : Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isLoading) const CircularProgressIndicator(),
             if(_wallet.isConnected) Text("The Balance is : ${_balance.toString()}"),
            if (_wallet.isConnected)
              Text('Wallet Address: ${_wallet.getKeyPair()?.address}'),
            SizedBox(
              height: 12,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: TextField(
                controller: _mnemonicController,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(hintText: "Enter Mnemonic"),
              ),
            ),
            ElevatedButton(
              onPressed: _connectWalletFromMnemo,
              child: Text('Connect Wallet from Mnemonic'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _connectStoredWallet,
              child: Text('Connect Stored Wallet'),
            ),
            const Divider(),

            ElevatedButton(
              onPressed: _generateWallet,
              child: Text('Generate Wallet'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Utils.testConnection();
              },
              child: Text('Test Connection'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                disconnectWallet();
              },
              child: Text('Disconnect'),
            ),
            ElevatedButton(
              onPressed: () {
                _getInfos();
              },
              child: Text('GetInfos'),
            ),
          ],
        ),
      ),
    );
  }

  void _generateWallet() async {
    setState(() {
      _isLoading = true;
    });
    await _wallet.init();

    setState(() {
      _isLoading = false;
    });

    print("############----${_wallet.getMnemonic()}");
  }

  void _connectStoredWallet() async {
    setState(() {
      _isLoading = true;
    });

    await _wallet.retrieveMnemo(WALLET_PREFIX);

    if (_wallet.getMnemonic() == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No stored mnemonic found')),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _connectWalletFromMnemo() {
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

    // Update connection status
    setState(() {
      _wallet.setIsConnected(true);
    });
  }

  Future<void> disconnectWallet() async {
    // Clear stored credentials or tokens
    _wallet.clearWallet();

    // Update connection status
    setState(() {
      _wallet.setIsConnected(false);
    });
  }

  String? validateMnemonic(String mnemonic) {
    List<String> words = mnemonic.split(' ');
    if (words.length != 12 && words.length != 24) {
      return 'Mnemonic must be 12 or 24 words';
    }
    return null;
  }

}
