// ignore_for_file: avoid_dynamic_calls

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:futurstore/generated/relai_network/relai_network.dart';
import 'package:futurstore/generated/relai_network/types/sp_runtime/multiaddress/multi_address.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart'
    show
        AuthorApi,
        Extrinsic,
        Provider,
        SignatureType,
        SigningPayload,
        StateApi;
import 'package:polkadart_keyring/polkadart_keyring.dart';

Future<void> main(List<String> arguments) async {
  final provider = Provider.fromUri(Uri.parse(kRelaiRPC));
  final api = RelaiNetwork(provider);

  final stateApi = StateApi(provider);

  final runtimeVersion = await stateApi.getRuntimeVersion();

  final specVersion = runtimeVersion.specVersion;

  final transactionVersion = runtimeVersion.transactionVersion;

  final block = await provider.send('chain_getBlock', []);

  final blockNumber = int.parse(
    block.result['block']['header']['number'] as String,
  );

  final blockHash = (await provider.send('chain_getBlockHash', []))
      .result
      .replaceAll('0x', '');

  final genesisHash = (await provider.send('chain_getBlockHash', [0]))
      .result
      .replaceAll('0x', '');

  final keyring = await KeyPair.sr25519.fromMnemonic(
    'resource mirror lecture smooth midnight muffin position cup pepper fruit vanish also//0',
  ); // This is a random key

  final publicKey = hex.encode(keyring.publicKey.bytes);
  debugPrint('Public Key: $publicKey');
  final dest = const $MultiAddress().id(hex.decode(publicKey));
  final runtimeCall = api.tx.balances.transferAll(dest: dest, keepAlive: true);
  final encodedCall = hex.encode(runtimeCall.encode());
  debugPrint('Encoded call: $encodedCall');

  final payloadToSign = SigningPayload(
    method: encodedCall,
    specVersion: specVersion,
    transactionVersion: transactionVersion,
    genesisHash: genesisHash as String,
    blockHash: blockHash as String,
    blockNumber: blockNumber,
    eraPeriod: 64,
    nonce: 0, // Supposing it is this wallet first transaction
    tip: 0,
  );

  final payload = payloadToSign.encode(api.registry);
  debugPrint('Payload: ${hex.encode(payload)}');

  final signature = keyring.sign(payload);
  final hexSignature = hex.encode(signature);
  debugPrint('Signature: $hexSignature');

  final extrinsic = Extrinsic(
    signer: publicKey,
    method: encodedCall,
    signature: hexSignature,
    eraPeriod: 64,
    blockNumber: blockNumber,
    nonce: 0,
    tip: 0,
  ).encode(api.registry, SignatureType.sr25519);

  final hexExtrinsic = hex.encode(extrinsic);
  debugPrint('Extrinsic: $hexExtrinsic');

  /* final author =  */ await AuthorApi(provider).submitAndWatchExtrinsic(
    extrinsic,
    (p0) => debugPrint('Extrinsic result: ${p0.type} - {${p0.value}}'),
  );
}
