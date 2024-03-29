import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/features/wallets/data/repo/i_users_firestore_impl.dart';

import '../../data/repo/i_users.dart';

final usersServiceProvider = Provider<IUsers>((ref) => UsersFirestoreImpl());
