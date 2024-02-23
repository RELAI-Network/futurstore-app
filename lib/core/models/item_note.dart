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
  final DateTime addedAt;
  final String comment;
  final int downVotesCount;
  final String id;
  final DateTime updatedAt;

  final int upVotesCount;
  final String userId;
  final String userName;
  final String userProfilePictureUrl;
  final double value;

  static const String collection = 'notes';
}
