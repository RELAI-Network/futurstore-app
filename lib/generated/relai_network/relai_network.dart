// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:polkadart/polkadart.dart' as _i1;

import 'pallets/aura.dart' as _i4;
import 'pallets/balances.dart' as _i6;
import 'pallets/grandpa.dart' as _i5;
import 'pallets/sudo.dart' as _i8;
import 'pallets/system.dart' as _i2;
import 'pallets/timestamp.dart' as _i3;
import 'pallets/transaction_payment.dart' as _i7;

class Queries {
  Queries(_i1.StateApi api)
      : system = _i2.Queries(api),
        timestamp = _i3.Queries(api),
        aura = _i4.Queries(api),
        grandpa = _i5.Queries(api),
        balances = _i6.Queries(api),
        transactionPayment = _i7.Queries(api),
        sudo = _i8.Queries(api);

  final _i2.Queries system;

  final _i3.Queries timestamp;

  final _i4.Queries aura;

  final _i5.Queries grandpa;

  final _i6.Queries balances;

  final _i7.Queries transactionPayment;

  final _i8.Queries sudo;
}

class Extrinsics {
  Extrinsics();

  final _i2.Txs system = _i2.Txs();

  final _i3.Txs timestamp = _i3.Txs();

  final _i5.Txs grandpa = _i5.Txs();

  final _i6.Txs balances = _i6.Txs();

  final _i8.Txs sudo = _i8.Txs();
}

class Constants {
  Constants();

  final _i2.Constants system = _i2.Constants();

  final _i3.Constants timestamp = _i3.Constants();

  final _i5.Constants grandpa = _i5.Constants();

  final _i6.Constants balances = _i6.Constants();

  final _i7.Constants transactionPayment = _i7.Constants();
}

class Rpc {
  const Rpc({
    required this.state,
    required this.system,
  });

  final _i1.StateApi state;

  final _i1.SystemApi system;
}

class Registry {
  Registry();

  final int extrinsicVersion = 4;

  List getSignedExtensionTypes() {
    return ['CheckMortality', 'CheckNonce', 'ChargeTransactionPayment'];
  }

  List getSignedExtensionExtra() {
    return [
      'CheckSpecVersion',
      'CheckTxVersion',
      'CheckGenesis',
      'CheckMortality'
    ];
  }
}

class RelaiNetwork {
  RelaiNetwork._(
    this._provider,
    this.rpc,
  )   : query = Queries(rpc.state),
        constant = Constants(),
        tx = Extrinsics(),
        registry = Registry();

  factory RelaiNetwork(_i1.Provider provider) {
    final rpc = Rpc(
      state: _i1.StateApi(provider),
      system: _i1.SystemApi(provider),
    );
    return RelaiNetwork._(
      provider,
      rpc,
    );
  }

  factory RelaiNetwork.url(Uri url) {
    final provider = _i1.Provider.fromUri(url);
    return RelaiNetwork(provider);
  }

  final _i1.Provider _provider;

  final Queries query;

  final Constants constant;

  final Rpc rpc;

  final Extrinsics tx;

  final Registry registry;

  _i9.Future connect() async {
    return await _provider.connect();
  }

  _i9.Future disconnect() async {
    return await _provider.disconnect();
  }
}
