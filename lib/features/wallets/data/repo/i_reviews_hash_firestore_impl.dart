import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../models/review_hash.dart';
import 'i_reviews_hash.dart';

class ReviewsHashFirestoreImpl extends IReviewsHashRepo {
  final ReviewHashCollectionReference _service = reviewsHashReference;
  @override
  Future<void> add(
    String address,
    String assetId,
    String hash,
  ) {
    try {
      final doc = ['$address/$assetId/$hash'];

      return _service.doc('queue').get().then((value) {
        if (!value.exists) {
          _service.doc('queue').set(ReviewHash(list: doc));
        } else {
          _service.doc('queue').update(
                list: value.data?.list ?? [],
                listFieldValue: FieldValue.arrayUnion(doc),
              );
        }
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
