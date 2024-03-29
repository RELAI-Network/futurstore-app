import 'package:flutter/foundation.dart';
import 'package:futurstore/features/wallets/data/models/user.dart';
import 'package:futurstore/features/wallets/data/models/wallet_address.dart';

import 'i_users.dart';

class UsersFirestoreImpl extends IUsers {
  final UserModelCollectionReference _service = usersReference;
  @override
  Future<void> addWallet(
    WalletAddress wallet,
    String uuid,
    String deviceId,
  ) async {
    try {
      final docRef = _service.doc(uuid);
      final user = await docRef.get();

      if (!user.exists) {
        await _service.doc(uuid).set(
              UserModel(
                uuid: uuid,
                id: uuid,
                role: 'user',
                createdAt: DateTime.now(),
                lastConnection: DateTime.now(),
                deviceId: deviceId,
              ),
            );
      }

      await docRef.wallets.doc(wallet.address).set(
            Web3WalletAccount(
              userUuid: uuid,
              web3AccountAddress: wallet.address,
              web3AccountName: wallet.name,
              web3AccountSource: 'mobile',
            ),
          );
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<void> deleteWallet(String walletAddress, String uuid) async {
    try {
      await _service.doc(uuid).wallets.doc(walletAddress).delete();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<Web3WalletAccount>> fetchWallets(String uuid) {
    try {
      return _service.doc(uuid).wallets.get().then((value) {
        return value.docs.map((e) => e.data).toList();
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
