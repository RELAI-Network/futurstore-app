import 'package:flutter/foundation.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/books/data/models/book.dart';
import 'package:futurstore/features/wallets/data/models/user.dart';
import 'package:futurstore/features/wallets/data/models/wallet_address.dart';

import 'i_users.dart';

class UsersFirestoreImpl extends IUsers {
  final UserModelCollectionReference _service = usersReference;
  final ApplicationModelCollectionReference _appsService = appsReferences;
  final BookModelCollectionReference _booksService = booksReference;
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

  @override
  Future<List<UserAsset>> fetchAssets(String uuid) {
    try {
      return _service.doc(uuid).assets.get().then((value) {
        return value.docs.map((e) => e.data).toList();
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<ApplicationModel>> myAppsGames(String uuid) async {
    try {
      final assets = await fetchAssets(uuid);

      final appsGamesId = assets
          .where((a) => a.assetType == 'app' || a.assetType == 'game')
          .map((e) {
        return e.assetId;
      }).toList();

      // return _appsService
      //     .whereAssetId(whereIn: appsGamesId)
      //     .get()
      //     .then((value) {
      //   return value.docs.map((e) => e.data).toList();
      // });

      return _appsService.get().then((value) {
        return value.docs
            .map((e) => e.data)
            .where((a) => appsGamesId.contains(a.assetId))
            .toList();
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<BookModel>> myBooks(String uuid) async {
    try {
      final assets = await fetchAssets(uuid);

      final booksId = assets.where((a) => a.assetType == 'book').map((e) {
        return e.assetId;
      }).toList();

      // return _booksService.whereAssetId(whereIn: booksId).get().then((value)
      // {
      //   return value.docs.map((e) => e.data).toList();
      // });

      return _booksService.get().then((value) {
        return value.docs
            .map((e) => e.data)
            .where((a) => booksId.contains(a.assetId))
            .toList();
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<void> buyAsset(
    String uuid,
    String deviceId,
    String walletAddress,
    int assetId,
    String assetType,
  ) async {
    try {
      final docRef = _service.doc(uuid);
      final user = await docRef.get();

      if (!user.exists) {
        throw Exception('User not found');
      }

      if (await haveThisAsset(
        uuid,
        walletAddress,
        assetId.toString(),
      )) return;

      await docRef.assets.doc(assetId.toString()).set(
            UserAsset(
              deviceId: deviceId,
              accountAddress: walletAddress,
              assetId: assetId.toString(),
              assetType: assetType,
              paidAt: DateTime.now(),
            ),
          );
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<bool> haveThisAsset(
    String uuid,
    String walletAddress,
    String assetId,
  ) {
    try {
      return _service.doc(uuid).assets.doc(assetId).get().then((value) {
        return value.exists;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
