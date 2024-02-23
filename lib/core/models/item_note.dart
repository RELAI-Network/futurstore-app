import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/config/firestore_serializable.dart';
import 'package:futurstore/features/apps/models/app.dart';
import 'package:futurstore/features/games/models/game.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_note.g.dart';

@Collection<ApplicationModel>(ApplicationModel.collection)
@Collection<ItemNote>(
  '${ApplicationModel.collection}/*/${ItemNote.collection}',
)
final appsNotesReferences = ApplicationModelCollectionReference();

@Collection<GameModel>(GameModel.collection)
@Collection<ItemNote>(
  '${GameModel.collection}/*/${ItemNote.collection}',
)
final gamesNotesReferences = GameModelCollectionReference();

@firestoreSerializable
class ItemNote {
  ItemNote({
    required this.addedAt,
    required this.comment,
    required this.downVotesCount,
    required this.id,
    required this.updatedAt,
    required this.upVotesCount,
    required this.userId,
    required this.userName,
    required this.userProfilePictureUrl,
    required this.value,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'notes';

  final String comment;
  final double value;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'down_votes_count')
  final int downVotesCount;

  @Id()
  final String id;

  @JsonKey(name: 'up_votes_count')
  final int upVotesCount;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'user_name')
  final String userName;

  @JsonKey(name: 'user_profile_picture_url')
  final String userProfilePictureUrl;
}
