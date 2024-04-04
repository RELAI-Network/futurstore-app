// ignore: one_member_abstracts
abstract class IReviewsHashRepo {
  Future<void> add(
    String address,
    String assetId,
    String hash,
  );
}
