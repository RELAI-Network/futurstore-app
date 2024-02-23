// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemNote _$ItemNoteFromJson(Map<String, dynamic> json) => ItemNote(
      addedAt: const FirestoreDateTimeConverter()
          .fromJson(json['added_at'] as Timestamp),
      comment: json['comment'] as String,
      downVotesCount: json['down_votes_count'] as int,
      id: json['id'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updated_at'] as Timestamp),
      upVotesCount: json['up_votes_count'] as int,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userProfilePictureUrl: json['user_profile_picture_url'] as String,
      value: (json['value'] as num).toDouble(),
    );

const _$ItemNoteFieldMap = <String, String>{
  'comment': 'comment',
  'value': 'value',
  'addedAt': 'added_at',
  'downVotesCount': 'down_votes_count',
  'id': 'id',
  'upVotesCount': 'up_votes_count',
  'updatedAt': 'updated_at',
  'userId': 'user_id',
  'userName': 'user_name',
  'userProfilePictureUrl': 'user_profile_picture_url',
};

// ignore: unused_element
abstract class _$ItemNotePerFieldToJson {
  // ignore: unused_element
  static Object? comment(String instance) => instance;
  // ignore: unused_element
  static Object? value(double instance) => instance;
  // ignore: unused_element
  static Object? addedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? downVotesCount(int instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? upVotesCount(int instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? userName(String instance) => instance;
  // ignore: unused_element
  static Object? userProfilePictureUrl(String instance) => instance;
}

Map<String, dynamic> _$ItemNoteToJson(ItemNote instance) => <String, dynamic>{
      'comment': instance.comment,
      'value': instance.value,
      'added_at': const FirestoreDateTimeConverter().toJson(instance.addedAt),
      'down_votes_count': instance.downVotesCount,
      'id': instance.id,
      'up_votes_count': instance.upVotesCount,
      'updated_at':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_profile_picture_url': instance.userProfilePictureUrl,
    };
