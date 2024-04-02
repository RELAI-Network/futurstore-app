// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i6;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i2;

import '../types/futur_assets_reg/pallet/call.dart' as _i8;
import '../types/relai_network_runtime/runtime_call.dart' as _i7;
import '../types/relai_primitives/assetsreg/asset.dart' as _i3;
import '../types/sp_core/crypto/account_id32.dart' as _i4;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<int> _nextAssetId = const _i1.StorageValue<int>(
    prefix: 'FuturAssetsReg',
    storage: 'NextAssetId',
    valueCodec: _i2.U32Codec.codec,
  );

  final _i1.StorageMap<int, _i3.Asset> _assetRegistry =
      const _i1.StorageMap<int, _i3.Asset>(
    prefix: 'FuturAssetsReg',
    storage: 'AssetRegistry',
    valueCodec: _i3.Asset.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i2.U32Codec.codec),
  );

  final _i1.StorageMap<int, _i4.AccountId32> _assetByCreator =
      const _i1.StorageMap<int, _i4.AccountId32>(
    prefix: 'FuturAssetsReg',
    storage: 'AssetByCreator',
    valueCodec: _i4.AccountId32Codec(),
    hasher: _i1.StorageHasher.blake2b128Concat(_i2.U32Codec.codec),
  );

  final _i1.StorageDoubleMap<_i4.AccountId32, int, bool> _assetPurchases =
      const _i1.StorageDoubleMap<_i4.AccountId32, int, bool>(
    prefix: 'FuturAssetsReg',
    storage: 'AssetPurchases',
    valueCodec: _i2.BoolCodec.codec,
    hasher1: _i1.StorageHasher.blake2b128Concat(_i4.AccountId32Codec()),
    hasher2: _i1.StorageHasher.blake2b128Concat(_i2.U32Codec.codec),
  );

  _i5.Future<int> nextAssetId({_i1.BlockHash? at}) async {
    final hashedKey = _nextAssetId.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nextAssetId.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i5.Future<_i3.Asset?> assetRegistry(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _assetRegistry.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _assetRegistry.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i5.Future<_i4.AccountId32?> assetByCreator(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _assetByCreator.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _assetByCreator.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i5.Future<bool?> assetPurchases(
    _i4.AccountId32 key1,
    int key2, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _assetPurchases.hashedKeyFor(
      key1,
      key2,
    );
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _assetPurchases.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Returns the storage key for `nextAssetId`.
  _i6.Uint8List nextAssetIdKey() {
    final hashedKey = _nextAssetId.hashedKey();
    return hashedKey;
  }

  /// Returns the storage key for `assetRegistry`.
  _i6.Uint8List assetRegistryKey(int key1) {
    final hashedKey = _assetRegistry.hashedKeyFor(key1);
    return hashedKey;
  }

  /// Returns the storage key for `assetByCreator`.
  _i6.Uint8List assetByCreatorKey(int key1) {
    final hashedKey = _assetByCreator.hashedKeyFor(key1);
    return hashedKey;
  }

  /// Returns the storage key for `assetPurchases`.
  _i6.Uint8List assetPurchasesKey(
    _i4.AccountId32 key1,
    int key2,
  ) {
    final hashedKey = _assetPurchases.hashedKeyFor(
      key1,
      key2,
    );
    return hashedKey;
  }

  /// Returns the storage map key prefix for `assetRegistry`.
  _i6.Uint8List assetRegistryMapPrefix() {
    final hashedKey = _assetRegistry.mapPrefix();
    return hashedKey;
  }

  /// Returns the storage map key prefix for `assetByCreator`.
  _i6.Uint8List assetByCreatorMapPrefix() {
    final hashedKey = _assetByCreator.mapPrefix();
    return hashedKey;
  }

  /// Returns the storage map key prefix for `assetPurchases`.
  _i6.Uint8List assetPurchasesMapPrefix(_i4.AccountId32 key1) {
    final hashedKey = _assetPurchases.mapPrefix(key1);
    return hashedKey;
  }
}

class Txs {
  const Txs();

  /// See [`Pallet::submit_asset`].
  _i7.RuntimeCall submitAsset({required _i3.Asset asset}) {
    final _call = _i8.Call.values.submitAsset(asset: asset);
    return _i7.RuntimeCall.values.futurAssetsReg(_call);
  }

  /// See [`Pallet::pub_unpub_asset`].
  _i7.RuntimeCall pubUnpubAsset({
    required int assetId,
    required bool pubUnpub,
  }) {
    final _call = _i8.Call.values.pubUnpubAsset(
      assetId: assetId,
      pubUnpub: pubUnpub,
    );
    return _i7.RuntimeCall.values.futurAssetsReg(_call);
  }

  /// See [`Pallet::delete_asset`].
  _i7.RuntimeCall deleteAsset({required int assetId}) {
    final _call = _i8.Call.values.deleteAsset(assetId: assetId);
    return _i7.RuntimeCall.values.futurAssetsReg(_call);
  }

  /// See [`Pallet::buy_asset`].
  _i7.RuntimeCall buyAsset({required int assetId}) {
    final _call = _i8.Call.values.buyAsset(assetId: assetId);
    return _i7.RuntimeCall.values.futurAssetsReg(_call);
  }

  /// See [`Pallet::update_asset`].
  _i7.RuntimeCall updateAsset({
    required int assetId,
    required _i3.Asset asset,
  }) {
    final _call = _i8.Call.values.updateAsset(
      assetId: assetId,
      asset: asset,
    );
    return _i7.RuntimeCall.values.futurAssetsReg(_call);
  }
}
