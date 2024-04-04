// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connected_wallet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToWalletHash() => r'01a967967ef2bcacc55a2186e4fc9db1cc164376';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [connectToWallet].
@ProviderFor(connectToWallet)
const connectToWalletProvider = ConnectToWalletFamily();

/// See also [connectToWallet].
class ConnectToWalletFamily extends Family<AsyncValue<void>> {
  /// See also [connectToWallet].
  const ConnectToWalletFamily();

  /// See also [connectToWallet].
  ConnectToWalletProvider call(
    WalletAddress address,
  ) {
    return ConnectToWalletProvider(
      address,
    );
  }

  @override
  ConnectToWalletProvider getProviderOverride(
    covariant ConnectToWalletProvider provider,
  ) {
    return call(
      provider.address,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'connectToWalletProvider';
}

/// See also [connectToWallet].
class ConnectToWalletProvider extends AutoDisposeFutureProvider<void> {
  /// See also [connectToWallet].
  ConnectToWalletProvider(
    WalletAddress address,
  ) : this._internal(
          (ref) => connectToWallet(
            ref as ConnectToWalletRef,
            address,
          ),
          from: connectToWalletProvider,
          name: r'connectToWalletProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$connectToWalletHash,
          dependencies: ConnectToWalletFamily._dependencies,
          allTransitiveDependencies:
              ConnectToWalletFamily._allTransitiveDependencies,
          address: address,
        );

  ConnectToWalletProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.address,
  }) : super.internal();

  final WalletAddress address;

  @override
  Override overrideWith(
    FutureOr<void> Function(ConnectToWalletRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConnectToWalletProvider._internal(
        (ref) => create(ref as ConnectToWalletRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _ConnectToWalletProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConnectToWalletProvider && other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConnectToWalletRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `address` of this provider.
  WalletAddress get address;
}

class _ConnectToWalletProviderElement
    extends AutoDisposeFutureProviderElement<void> with ConnectToWalletRef {
  _ConnectToWalletProviderElement(super.provider);

  @override
  WalletAddress get address => (origin as ConnectToWalletProvider).address;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
