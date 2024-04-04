import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/features/wallets/data/repo/i_reviews_hash.dart';

import '../../data/repo/i_reviews_hash_firestore_impl.dart';

final reviewsHashRepoProvider = Provider<IReviewsHashRepo>(
  (ref) => ReviewsHashFirestoreImpl(),
);
