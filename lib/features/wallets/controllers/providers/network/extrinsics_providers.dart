import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;
import 'package:futurstore/generated/relai_network/relai_network.dart';
import 'package:polkadart/extrinsic/extrinsic_payload.dart';
import 'package:polkadart/polkadart.dart'
    show
        AuthorApi,
        Provider,
        SignatureType,
        SigningPayload,
        StateApi,
        SystemApi;
import 'package:ss58/ss58.dart';

import 'relai_network_providers.dart';
import 'utils_provider.dart';

final relaiApiProvider = rp.Provider<Provider>(
  (ref) => Provider.fromUri(ref.read(relaiNetworkUriProvider)),
);

final relaiNetworkApiProvider = rp.Provider<RelaiNetwork>(
  (ref) => RelaiNetwork(ref.read(relaiApiProvider)),
);

final relaiStateApiProvider = rp.Provider<StateApi>(
  (ref) => StateApi(ref.read(relaiApiProvider)),
);

final relaiAuthorApiProvider = rp.Provider<AuthorApi>(
  (ref) => AuthorApi(ref.read(relaiApiProvider)),
);

// ignore: strict_raw_type
final relaiSystemApiProvider = rp.Provider<SystemApi>(
  (ref) => SystemApi(ref.read(relaiApiProvider)),
);

typedef ExtrinsicFromMnemonicAndAssetIdFunc = Future<Uint8List> Function(
  String mnemonic,
  int assetId,
);

final extrinsicPayloadFromAddressAndAssetIdFuncProvider =
    rp.Provider<ExtrinsicFromMnemonicAndAssetIdFunc>(
  (ref) => (mnemonic, assetId) async {
    final relai = ref.read(relaiApiProvider);
    final relaiNetwork = ref.read(relaiNetworkApiProvider);
    final stateApi = ref.read(relaiStateApiProvider);
    final systemApi = ref.read(relaiSystemApiProvider);

    final publicKey = await ref.read(keyPairFromMnemonicFuncProvider)(mnemonic);

    // Get info necessary to build an extrinsic
    final runtimeVersion = await stateApi.getRuntimeVersion();
    final specVersion = runtimeVersion.specVersion;
    final transactionVersion = runtimeVersion.transactionVersion;
    final block = await relai.send('chain_getBlock', []);
    final blockNumber = int.parse(
      // ignore: avoid_dynamic_calls
      block.result['block']['header']['number'] as String,
    );

    // ignore: avoid_dynamic_calls
    final blockHash =
        ((await relai.send('chain_getBlockHash', [])).result as String)
            .replaceAll('0x', '');

    // ignore: avoid_dynamic_calls
    final genesisHash =
        ((await relai.send('chain_getBlockHash', [0])).result as String)
            .replaceAll('0x', '');

    // sending balance from sr25519 wallet to ecdsa wallet
    // Encode call
    final runtimeCall = relaiNetwork.tx.futurAssetsReg.buyAsset(
      assetId: assetId,
    );
    final encodedCall = runtimeCall.encode();

    final nonce1 = await systemApi.accountNextIndex(publicKey.address);

    final payLoadToSign = SigningPayload(
      method: encodedCall,
      specVersion: specVersion,
      transactionVersion: transactionVersion,
      genesisHash: genesisHash,
      blockHash: blockHash,
      blockNumber: blockNumber,
      eraPeriod: 64,
      nonce: nonce1, // Supposing it is this wallet first transaction
      tip: 0,
    ).encode(relaiNetwork.registry);

    final signature = publicKey.sign(payLoadToSign);

    return ExtrinsicPayload(
      signer: Uint8List.fromList(publicKey.bytes()),
      method: encodedCall,
      signature: signature,
      eraPeriod: 64,
      blockNumber: blockNumber,
      nonce: nonce1,
      tip: 0,
    ).encode(relaiNetwork.registry, SignatureType.sr25519);
  },
);

typedef VerifyAssetPurchaseFromAddressAndAssetIdFunc = Future<bool> Function(
  String address,
  int assetId,
);

final verifyAssetPurchaseFromAddressAndAssetIdFuncProvider =
    rp.Provider<VerifyAssetPurchaseFromAddressAndAssetIdFunc>(
  (ref) => (address, assetId) async {
    final relaiNetwork = ref.read(relaiNetworkApiProvider);

    final account = Address.decode(address);

    return await relaiNetwork.query.futurAssetsReg.assetPurchases(
          account.pubkey,
          assetId,
        ) ??
        false;
  },
);

typedef GetHashFromReviewInformationFunc = Future<String> Function(
  String mnemonic,
  String deviceId,
  int assetId,
  int note,
  String? content,
);

final getHashFromReviewInformationFuncProvider =
    rp.Provider<GetHashFromReviewInformationFunc>(
  (ref) => (mnemonic, deviceId, assetId, note, content) async {
    // Combine the data into a single string
    final data = '$deviceId,$assetId,$note,$content';

    // Convert the data string to bytes
    final dataBytes = Uint8List.fromList(utf8.encode(data));

    // Replace with your actual seed
    final keyPair = await ref.read(keyPairFromMnemonicFuncProvider)(mnemonic);

    // Sign the data
    final signature = keyPair.sign(dataBytes);

    // Convert the signature to a hex string
    final signatureHex = hex.encode(signature);

    // Derive the reviewerAddress from the key pair
    // final reviewerAddress = hex.encode(signature);

    return signatureHex;
  },
);
