// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:typed_data' as _i7;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i2;

import '..\types\orml_nft\class_info.dart' as _i3;
import '..\types\orml_nft\token_info.dart' as _i4;
import '..\types\sp_core\crypto\account_id32.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<int> _nextClassId = const _i1.StorageValue<int>(
    prefix: 'OrmlNFT',
    storage: 'NextClassId',
    valueCodec: _i2.U32Codec.codec,
  );

  final _i1.StorageMap<int, BigInt> _nextTokenId =
      const _i1.StorageMap<int, BigInt>(
    prefix: 'OrmlNFT',
    storage: 'NextTokenId',
    valueCodec: _i2.U64Codec.codec,
    hasher: _i1.StorageHasher.twoxx64Concat(_i2.U32Codec.codec),
  );

  final _i1.StorageMap<int, _i3.ClassInfo> _classes =
      const _i1.StorageMap<int, _i3.ClassInfo>(
    prefix: 'OrmlNFT',
    storage: 'Classes',
    valueCodec: _i3.ClassInfo.codec,
    hasher: _i1.StorageHasher.twoxx64Concat(_i2.U32Codec.codec),
  );

  final _i1.StorageDoubleMap<int, BigInt, _i4.TokenInfo> _tokens =
      const _i1.StorageDoubleMap<int, BigInt, _i4.TokenInfo>(
    prefix: 'OrmlNFT',
    storage: 'Tokens',
    valueCodec: _i4.TokenInfo.codec,
    hasher1: _i1.StorageHasher.twoxx64Concat(_i2.U32Codec.codec),
    hasher2: _i1.StorageHasher.twoxx64Concat(_i2.U64Codec.codec),
  );

  final _i1.StorageTripleMap<_i5.AccountId32, int, BigInt, dynamic>
      _tokensByOwner =
      const _i1.StorageTripleMap<_i5.AccountId32, int, BigInt, dynamic>(
    prefix: 'OrmlNFT',
    storage: 'TokensByOwner',
    valueCodec: _i2.NullCodec.codec,
    hasher1: _i1.StorageHasher.blake2b128Concat(_i5.AccountId32Codec()),
    hasher2: _i1.StorageHasher.blake2b128Concat(_i2.U32Codec.codec),
    hasher3: _i1.StorageHasher.blake2b128Concat(_i2.U64Codec.codec),
  );

  /// Next available class ID.
  _i6.Future<int> nextClassId({_i1.BlockHash? at}) async {
    final hashedKey = _nextClassId.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nextClassId.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  /// Next available token ID.
  _i6.Future<BigInt> nextTokenId(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nextTokenId.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nextTokenId.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  /// Store class info.
  ///
  /// Returns `None` if class info not set or removed.
  _i6.Future<_i3.ClassInfo?> classes(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _classes.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _classes.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Store token info.
  ///
  /// Returns `None` if token info not set or removed.
  _i6.Future<_i4.TokenInfo?> tokens(
    int key1,
    BigInt key2, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _tokens.hashedKeyFor(
      key1,
      key2,
    );
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _tokens.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Token existence check by owner and class ID.
  _i6.Future<dynamic> tokensByOwner(
    _i5.AccountId32 key1,
    int key2,
    BigInt key3, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _tokensByOwner.hashedKeyFor(
      key1,
      key2,
      key3,
    );
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _tokensByOwner.decodeValue(bytes);
    }
    return null; /* Default */
  }

  /// Returns the storage key for `nextClassId`.
  _i7.Uint8List nextClassIdKey() {
    final hashedKey = _nextClassId.hashedKey();
    return hashedKey;
  }

  /// Returns the storage key for `nextTokenId`.
  _i7.Uint8List nextTokenIdKey(int key1) {
    final hashedKey = _nextTokenId.hashedKeyFor(key1);
    return hashedKey;
  }

  /// Returns the storage key for `classes`.
  _i7.Uint8List classesKey(int key1) {
    final hashedKey = _classes.hashedKeyFor(key1);
    return hashedKey;
  }

  /// Returns the storage key for `tokens`.
  _i7.Uint8List tokensKey(
    int key1,
    BigInt key2,
  ) {
    final hashedKey = _tokens.hashedKeyFor(
      key1,
      key2,
    );
    return hashedKey;
  }

  /// Returns the storage key for `tokensByOwner`.
  _i7.Uint8List tokensByOwnerKey(
    _i5.AccountId32 key1,
    int key2,
    BigInt key3,
  ) {
    final hashedKey = _tokensByOwner.hashedKeyFor(
      key1,
      key2,
      key3,
    );
    return hashedKey;
  }

  /// Returns the storage map key prefix for `nextTokenId`.
  _i7.Uint8List nextTokenIdMapPrefix() {
    final hashedKey = _nextTokenId.mapPrefix();
    return hashedKey;
  }

  /// Returns the storage map key prefix for `classes`.
  _i7.Uint8List classesMapPrefix() {
    final hashedKey = _classes.mapPrefix();
    return hashedKey;
  }

  /// Returns the storage map key prefix for `tokens`.
  _i7.Uint8List tokensMapPrefix(int key1) {
    final hashedKey = _tokens.mapPrefix(key1);
    return hashedKey;
  }
}
