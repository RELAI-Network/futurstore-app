import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/utils/constants.dart';
import 'package:futurstore/generated/relai_network/relai_network.dart';
import 'package:polkadart/polkadart.dart' as pk;

final relaiNetworkUrlProvider = Provider<String>((_) => kRelaiRPC);

final relaiNetworkUriProvider = Provider<Uri>(
  (ref) => Uri.parse(
    ref.read(relaiNetworkUrlProvider),
  ),
);

final relaiNetworkWSProvider = Provider<pk.WsProvider>(
  (ref) => pk.WsProvider(ref.read(relaiNetworkUriProvider)),
);

final relaiNetworkProvider = Provider<RelaiNetwork>(
  (ref) => RelaiNetwork(ref.read(relaiNetworkWSProvider)),
);
