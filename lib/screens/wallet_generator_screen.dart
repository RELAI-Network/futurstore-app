import 'package:flutter/material.dart';
import 'package:futurstore/substrate/transactions.dart';

import '../substrate/substrate_wallet.dart';
import '../utils/constants.dart';
import '../utils/utils.dart';

class WalletManagerScreen extends StatefulWidget {
  const WalletManagerScreen({super.key});

  @override
  State<WalletManagerScreen> createState() => _WalletManagerScreenState();
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
    // ignore: discarded_futures
    _wallet.retrieveMnemo(kWalletPrefix).then((_) async {
      _balance = await _transactions.getBalance();

      setState(() {});
      // ignore: discarded_futures
    }).catchError((error) {
      debugPrint('Mnemo removed or not created yet');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Management'),
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
            if (_wallet.isConnected) Text('The Balance is : $_balance'),
            if (_wallet.isConnected)
              Text('Wallet Address: ${_wallet.getKeyPair()?.address}'),
            const SizedBox(
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
                decoration: const InputDecoration(hintText: 'Enter Mnemonic'),
              ),
            ),
            ElevatedButton(
              onPressed: _connectWalletFromMnemo,
              child: const Text('Connect Wallet from Mnemonic'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _connectStoredWallet,
              child: const Text('Connect Stored Wallet'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _generateWallet,
              child: const Text('Generate Wallet'),
            ),
            const Divider(),
            const ElevatedButton(
              onPressed: Utils.testConnection,
              child: Text('Test Connection'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: disconnectWallet,
              child: const Text('Disconnect'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _generateWallet() async {
    setState(() {
      _isLoading = true;
    });
    await _wallet.init();

    setState(() {
      _isLoading = false;
    });

    debugPrint('############----${_wallet.getMnemonic()}');
  }

  Future<void> _connectStoredWallet() async {
    setState(() {
      _isLoading = true;
    });

    await _wallet.retrieveMnemo(kWalletPrefix);

    if (_wallet.getMnemonic() == null && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No stored mnemonic found')),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _connectWalletFromMnemo() async {
    final mnemonic = _mnemonicController.text;
    final validationError = validateMnemonic(mnemonic);
    if (validationError != null) {
      // Display the error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(validationError)),
      );
      return;
    }
    // Restore the account using the mnemonic
    await _wallet.restoreWalletFromMnemonic(mnemonic);

    // Store the restored account in the wallet
    await _wallet.storeMnemo(kWalletPrefix);

    // Update connection status
    setState(() {
      _wallet.isConnected = true;
    });
  }

  Future<void> disconnectWallet() async {
    // Clear stored credentials or tokens
    await _wallet.clearWallet();

    // Update connection status
    setState(() {
      _wallet.isConnected = false;
    });
  }

  String? validateMnemonic(String mnemonic) {
    final words = mnemonic.split(' ');
    if (words.length != 12 && words.length != 24) {
      return 'Mnemonic must be 12 or 24 words';
    }
    return null;
  }
}
