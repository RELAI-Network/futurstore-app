// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

/// Error for non-fungible-token module.
enum Error {
  /// No available class ID
  noAvailableClassId('NoAvailableClassId', 0),

  /// No available token ID
  noAvailableTokenId('NoAvailableTokenId', 1),

  /// Token(ClassId, TokenId) not found
  tokenNotFound('TokenNotFound', 2),

  /// Class not found
  classNotFound('ClassNotFound', 3),

  /// The operator is not the owner of the token and has no permission
  noPermission('NoPermission', 4),

  /// Can not destroy class
  /// Total issuance is not 0
  cannotDestroyClass('CannotDestroyClass', 5),

  /// Failed because the Maximum amount of metadata was exceeded
  maxMetadataExceeded('MaxMetadataExceeded', 6);

  const Error(
    this.variantName,
    this.codecIndex,
  );

  factory Error.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $ErrorCodec codec = $ErrorCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $ErrorCodec with _i1.Codec<Error> {
  const $ErrorCodec();

  @override
  Error decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Error.noAvailableClassId;
      case 1:
        return Error.noAvailableTokenId;
      case 2:
        return Error.tokenNotFound;
      case 3:
        return Error.classNotFound;
      case 4:
        return Error.noPermission;
      case 5:
        return Error.cannotDestroyClass;
      case 6:
        return Error.maxMetadataExceeded;
      default:
        throw Exception('Error: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Error value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
