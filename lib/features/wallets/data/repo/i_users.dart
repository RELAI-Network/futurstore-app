import '../models/user.dart';
import '../models/wallet_address.dart';

abstract class IUsers {
  Future<void> addWallet(
    WalletAddress wallet,
    String uuid,
    String deviceId,
  );

  Future<void> deleteWallet(String walletAddress, String uuid);

  Future<List<Web3WalletAccount>> fetchWallets(String uuid);
}
