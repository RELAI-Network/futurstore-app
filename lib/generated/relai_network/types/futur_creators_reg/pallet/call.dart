// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

/// Contains a variant per dispatchable extrinsic that this pallet has.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $Call {
  const $Call();

  SetRegistrationFee setRegistrationFee({required BigInt amount}) {
    return SetRegistrationFee(amount: amount);
  }

  RegisterDeveloper registerDeveloper({
    required List<int> name,
    required List<int> email,
    required List<int> website,
  }) {
    return RegisterDeveloper(
      name: name,
      email: email,
      website: website,
    );
  }

  UnregisterDeveloper unregisterDeveloper() {
    return UnregisterDeveloper();
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return SetRegistrationFee._decode(input);
      case 1:
        return RegisterDeveloper._decode(input);
      case 2:
        return const UnregisterDeveloper();
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case SetRegistrationFee:
        (value as SetRegistrationFee).encodeTo(output);
        break;
      case RegisterDeveloper:
        (value as RegisterDeveloper).encodeTo(output);
        break;
      case UnregisterDeveloper:
        (value as UnregisterDeveloper).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case SetRegistrationFee:
        return (value as SetRegistrationFee)._sizeHint();
      case RegisterDeveloper:
        return (value as RegisterDeveloper)._sizeHint();
      case UnregisterDeveloper:
        return 1;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// See [`Pallet::set_registration_fee`].
class SetRegistrationFee extends Call {
  const SetRegistrationFee({required this.amount});

  factory SetRegistrationFee._decode(_i1.Input input) {
    return SetRegistrationFee(amount: _i1.U128Codec.codec.decode(input));
  }

  /// BalanceOf<T>
  final BigInt amount;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'set_registration_fee': {'amount': amount}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U128Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetRegistrationFee && other.amount == amount;

  @override
  int get hashCode => amount.hashCode;
}

/// See [`Pallet::register_developer`].
class RegisterDeveloper extends Call {
  const RegisterDeveloper({
    required this.name,
    required this.email,
    required this.website,
  });

  factory RegisterDeveloper._decode(_i1.Input input) {
    return RegisterDeveloper(
      name: _i1.U8SequenceCodec.codec.decode(input),
      email: _i1.U8SequenceCodec.codec.decode(input),
      website: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// BoundedVec<u8, ConstU32<100>>
  final List<int> name;

  /// BoundedVec<u8, ConstU32<100>>
  final List<int> email;

  /// BoundedVec<u8, ConstU32<100>>
  final List<int> website;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'register_developer': {
          'name': name,
          'email': email,
          'website': website,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(email);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(website);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      email,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      website,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RegisterDeveloper &&
          _i3.listsEqual(
            other.name,
            name,
          ) &&
          _i3.listsEqual(
            other.email,
            email,
          ) &&
          _i3.listsEqual(
            other.website,
            website,
          );

  @override
  int get hashCode => Object.hash(
        name,
        email,
        website,
      );
}

/// See [`Pallet::unregister_developer`].
class UnregisterDeveloper extends Call {
  const UnregisterDeveloper();

  @override
  Map<String, dynamic> toJson() => {'unregister_developer': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is UnregisterDeveloper;

  @override
  int get hashCode => runtimeType.hashCode;
}
