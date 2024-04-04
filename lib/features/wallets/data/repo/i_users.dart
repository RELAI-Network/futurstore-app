import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/books/data/models/book.dart';

import '../models/user.dart';
import '../models/wallet_address.dart';

abstract class IUsers {
  Future<void> addWallet(
    WalletAddress wallet,
    String uuid,
    String deviceId,
  );

  Future<UserModel?> findUserByDeviceId(String deviceId);

  Future<void> deleteWallet(String walletAddress, String uuid);

  Future<void> buyAsset(
    String uuid,
    String deviceId,
    String walletAddress,
    int assetId,
    String assetType,
  );

  Future<bool> haveThisAsset(
    String uuid,
    String walletAddress,
    String assetId,
  );

  Future<List<Web3WalletAccount>> fetchWallets(String uuid);

  Future<List<UserAsset>> fetchAssets(String uuid);

  Future<List<ApplicationModel>> myAppsGames(String uuid);

  Future<List<BookModel>> myBooks(String uuid);
}
