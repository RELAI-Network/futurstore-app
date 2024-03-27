// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i6;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i2;

import '..\types\futur_creators_reg\pallet\call.dart' as _i8;
import '..\types\relai_network_runtime\runtime_call.dart' as _i7;
import '..\types\relai_primitives\creatorsreg\dev_info.dart' as _i4;
import '..\types\sp_core\crypto\account_id32.dart' as _i3;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<int> _nextDevId = const _i1.StorageValue<int>(
    prefix: 'FuturCreatorsReg',
    storage: 'NextDevId',
    valueCodec: _i2.U32Codec.codec,
  );

  final _i1.StorageValue<BigInt> _regFee = const _i1.StorageValue<BigInt>(
    prefix: 'FuturCreatorsReg',
    storage: 'RegFee',
    valueCodec: _i2.U128Codec.codec,
  );

  final _i1.StorageMap<_i3.AccountId32, _i4.DevInfo> _devRegistry =
      const _i1.StorageMap<_i3.AccountId32, _i4.DevInfo>(
    prefix: 'FuturCreatorsReg',
    storage: 'DevRegistry',
    valueCodec: _i4.DevInfo.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.AccountId32Codec()),
  );

  _i5.Future<int> nextDevId({_i1.BlockHash? at}) async {
    final hashedKey = _nextDevId.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nextDevId.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i5.Future<BigInt> regFee({_i1.BlockHash? at}) async {
    final hashedKey = _regFee.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _regFee.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i5.Future<_i4.DevInfo?> devRegistry(
    _i3.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _devRegistry.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _devRegistry.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Returns the storage key for `nextDevId`.
  _i6.Uint8List nextDevIdKey() {
    final hashedKey = _nextDevId.hashedKey();
    return hashedKey;
  }

  /// Returns the storage key for `regFee`.
  _i6.Uint8List regFeeKey() {
    final hashedKey = _regFee.hashedKey();
    return hashedKey;
  }

  /// Returns the storage key for `devRegistry`.
  _i6.Uint8List devRegistryKey(_i3.AccountId32 key1) {
    final hashedKey = _devRegistry.hashedKeyFor(key1);
    return hashedKey;
  }

  /// Returns the storage map key prefix for `devRegistry`.
  _i6.Uint8List devRegistryMapPrefix() {
    final hashedKey = _devRegistry.mapPrefix();
    return hashedKey;
  }
}

class Txs {
  const Txs();

  /// See [`Pallet::set_registration_fee`].
  _i7.RuntimeCall setRegistrationFee({required BigInt amount}) {
    final _call = _i8.Call.values.setRegistrationFee(amount: amount);
    return _i7.RuntimeCall.values.futurCreatorsReg(_call);
  }

  /// See [`Pallet::register_developer`].
  _i7.RuntimeCall registerDeveloper({
    required List<int> name,
    required List<int> email,
    required List<int> website,
  }) {
    final _call = _i8.Call.values.registerDeveloper(
      name: name,
      email: email,
      website: website,
    );
    return _i7.RuntimeCall.values.futurCreatorsReg(_call);
  }

  /// See [`Pallet::unregister_developer`].
  _i7.RuntimeCall unregisterDeveloper() {
    final _call = _i8.Call.values.unregisterDeveloper();
    return _i7.RuntimeCall.values.futurCreatorsReg(_call);
  }
}
