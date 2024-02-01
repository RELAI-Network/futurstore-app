import 'package:convert/convert.dart';
import 'package:futurstore/substrate/substrate_wallet.dart';
import 'package:futurstore/utils/constants.dart';
import 'package:polkadart/polkadart.dart'
    show
    AuthorApi,
    Extrinsic,
    Provider,
    SigningPayload,
    StateApi;
import 'package:polkadart/provider.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';
//import 'package:futurstore/generated/relai_network/relai_network.dart';
//import 'package:futurstore/generated/relai_network/types/sp_runtime/multiaddress/multi_address.dart';


class Transactions {
    late WsProvider relai_network_provider;
    late StateApi api;
    final _wallet = SubstrateWallet.instance;

    Transactions(){
        relai_network_provider = WsProvider(Uri.parse(RELAI_RPC));
         api = StateApi(relai_network_provider);
    }


    transfer() async {

        /*
        var rn = RelaiNetwork(relai_network_provider);

        var peers = rn.rpc.system.peers();

        await peers.then((value) => {
            print("😎😎😎😎😎${value}")
        });



      final stateApi = StateApi(relai_network_provider);
        final runtimeVersion = await stateApi.getRuntimeVersion();
        final specVersion = runtimeVersion.specVersion;
        final transactionVersion = runtimeVersion.transactionVersion;
        final block = await relai_network_provider.send('chain_getBlock', []);
        final blockNumber = int.parse(block.result['block']['header']['number']);
        final blockHash = (await relai_network_provider.send('chain_getBlockHash', []))
            .result
            .replaceAll('0x', '');
        final genesisHash = (await relai_network_provider.send('chain_getBlockHash', [0]))
            .result
            .replaceAll('0x', '');
        final keyring = await KeyPair.fromMnemonic(
            "resource mirror lecture smooth midnight muffin position cup pepper fruit vanish also//0"); // This is a random key
        final publicKey = hex.encode(keyring.publicKey.bytes);
        print('Public Key: $publicKey');
        final dest = $MultiAddress().id(hex.decode(publicKey));
        final runtimeCall = api.tx.balances.transferAll(dest: dest, keepAlive: true);
        final encodedCall = hex.encode(runtimeCall.encode());
        print('Encoded call: $encodedCall');
        final payloadToSign = SigningPayload(
            method: encodedCall,
            specVersion: specVersion,
            transactionVersion: transactionVersion,
            genesisHash: genesisHash,
            blockHash: blockHash,
            blockNumber: blockNumber,
            eraPeriod: 64,
            nonce: 0, // Supposing it is this wallet first transaction
            tip: 0,
        );
        final payload = payloadToSign.encode(api.registry);
        print('Payload: ${hex.encode(payload)}');
        final signature = keyring.sign(payload);
        final hexSignature = hex.encode(signature);
        print('Signature: $hexSignature');
        final extrinsic = Extrinsic(
            signer: publicKey,
            method: encodedCall,
            signature: hexSignature,
            eraPeriod: 64,
            blockNumber: blockNumber,
            nonce: 0,
            tip: 0,
        ).encode(api.registry);
        final hexExtrinsic = hex.encode(extrinsic);
        print('Extrinsic: $hexExtrinsic');

        final author = AuthorApi(relai_network_provider);
        author.submitAndWatchExtrinsic(
            extrinsic, (p0) => print("Extrinsic result: ${p0.type} - {${p0.value}}"));

       */
    }
}