// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class WalletAddress extends Equatable {
  WalletAddress({
    required this.address,
    required this.mnemonicOrSeed,
    required this.name,
    DateTime? addedAt,
  }) : addedAt = addedAt ?? DateTime.now();

  factory WalletAddress.fromJson(String source) =>
      WalletAddress.fromMap(json.decode(source) as Map<String, dynamic>);

  factory WalletAddress.fromMap(Map<String, dynamic> map) {
    return WalletAddress(
      addedAt: map['added_at'] == null
          ? DateTime.now()
          : DateTime.parse((map['added_at'] ?? '') as String),
      address: (map['address'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      mnemonicOrSeed: (map['secret'] ?? '') as String,
    );
  }

  final DateTime addedAt;
  final String address;
  final String mnemonicOrSeed;
  final String name;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'added_at': addedAt.toIso8601String(),
      'address': address,
      'name': name,
      'secret': mnemonicOrSeed,
    };
  }

  @override
  List<Object> get props => [addedAt, address, mnemonicOrSeed, name];
}
