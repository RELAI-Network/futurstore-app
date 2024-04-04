// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/utils/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@Collection<UserModel>(UserModel.collection)
@Collection<Web3WalletAccount>(
  '${UserModel.collection}/*/${Web3WalletAccount.collection}',
)
@Collection<UserAsset>(
  '${UserModel.collection}/*/${UserAsset.collection}',
)
final usersReference = UserModelCollectionReference();

@firestoreSerializable
class UserModel {
  UserModel({
    required this.addresses,
    required this.id,
    required this.role,
    required this.uuid,
    this.createdAt,
    this.deviceId,
    this.lastConnection,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'users';

  final String uuid;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'device_id')
  final String? deviceId;

  @JsonKey(name: 'addresses', defaultValue: <String>[])
  final List<String> addresses;

  @Id()
  final String id;

  @JsonKey(name: 'last_connection')
  final DateTime? lastConnection;

  @JsonKey(name: 'role', defaultValue: 'user')
  final String role;

  UserModel copyWith({
    String? uuid,
    DateTime? createdAt,
    String? deviceId,
    List<String>? addresses,
    String? id,
    DateTime? lastConnection,
    String? role,
  }) {
    return UserModel(
      uuid: uuid ?? this.uuid,
      createdAt: createdAt ?? this.createdAt,
      deviceId: deviceId ?? this.deviceId,
      addresses: addresses ?? this.addresses,
      id: id ?? this.id,
      lastConnection: lastConnection ?? this.lastConnection,
      role: role ?? this.role,
    );
  }
}

@firestoreSerializable
class Web3WalletAccount {
  Web3WalletAccount({
    required this.userUuid,
    required this.web3AccountAddress,
    this.web3AccountName,
    this.web3AccountSource,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'wallets';

  @JsonKey(name: 'user_uuid')
  final String userUuid;

  @JsonKey(name: 'web3_account_address')
  final String web3AccountAddress;

  @JsonKey(name: 'web3_account_name')
  final String? web3AccountName;

  @JsonKey(name: 'web3_account_source', defaultValue: 'android')
  final String? web3AccountSource;
}

@firestoreSerializable
class UserAsset {
  UserAsset({
    required this.accountAddress,
    required this.assetId,
    required this.assetType,
    required this.deviceId,
    required this.paidAt,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'assets';

  @JsonKey(name: 'account_address')
  final String accountAddress;

  @JsonKey(name: 'asset_id')
  final String assetId;

  @JsonKey(name: 'asset_type')
  final String? assetType;

  @JsonKey(name: 'device_id')
  final String deviceId;

  @JsonKey(name: 'paid_at')
  final DateTime? paidAt;
}
