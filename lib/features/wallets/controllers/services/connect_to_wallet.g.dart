// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect_to_wallet.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToWalletFromMnemonicHash() =>
    r'af0acf07012c84669a5ce9866ae8aca7ddd642cc';

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

/// See also [connectToWalletFromMnemonic].
@ProviderFor(connectToWalletFromMnemonic)
const connectToWalletFromMnemonicProvider = ConnectToWalletFromMnemonicFamily();

/// See also [connectToWalletFromMnemonic].
class ConnectToWalletFromMnemonicFamily extends Family<
    AsyncValue<({String? error, bool success, WalletAddress? data})>> {
  /// See also [connectToWalletFromMnemonic].
  const ConnectToWalletFromMnemonicFamily();

  /// See also [connectToWalletFromMnemonic].
  ConnectToWalletFromMnemonicProvider call({
    required String walletMnemonicOrSeed,
    String? walletName,
  }) {
    return ConnectToWalletFromMnemonicProvider(
      walletMnemonicOrSeed: walletMnemonicOrSeed,
      walletName: walletName,
    );
  }

  @override
  ConnectToWalletFromMnemonicProvider getProviderOverride(
    covariant ConnectToWalletFromMnemonicProvider provider,
  ) {
    return call(
      walletMnemonicOrSeed: provider.walletMnemonicOrSeed,
      walletName: provider.walletName,
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
  String? get name => r'connectToWalletFromMnemonicProvider';
}

/// See also [connectToWalletFromMnemonic].
class ConnectToWalletFromMnemonicProvider extends AutoDisposeFutureProvider<
    ({String? error, bool success, WalletAddress? data})> {
  /// See also [connectToWalletFromMnemonic].
  ConnectToWalletFromMnemonicProvider({
    required String walletMnemonicOrSeed,
    String? walletName,
  }) : this._internal(
          (ref) => connectToWalletFromMnemonic(
            ref as ConnectToWalletFromMnemonicRef,
            walletMnemonicOrSeed: walletMnemonicOrSeed,
            walletName: walletName,
          ),
          from: connectToWalletFromMnemonicProvider,
          name: r'connectToWalletFromMnemonicProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$connectToWalletFromMnemonicHash,
          dependencies: ConnectToWalletFromMnemonicFamily._dependencies,
          allTransitiveDependencies:
              ConnectToWalletFromMnemonicFamily._allTransitiveDependencies,
          walletMnemonicOrSeed: walletMnemonicOrSeed,
          walletName: walletName,
        );

  ConnectToWalletFromMnemonicProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.walletMnemonicOrSeed,
    required this.walletName,
  }) : super.internal();

  final String walletMnemonicOrSeed;
  final String? walletName;

  @override
  Override overrideWith(
    FutureOr<({String? error, bool success, WalletAddress? data})> Function(
            ConnectToWalletFromMnemonicRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConnectToWalletFromMnemonicProvider._internal(
        (ref) => create(ref as ConnectToWalletFromMnemonicRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        walletMnemonicOrSeed: walletMnemonicOrSeed,
        walletName: walletName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
      ({String? error, bool success, WalletAddress? data})> createElement() {
    return _ConnectToWalletFromMnemonicProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConnectToWalletFromMnemonicProvider &&
        other.walletMnemonicOrSeed == walletMnemonicOrSeed &&
        other.walletName == walletName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, walletMnemonicOrSeed.hashCode);
    hash = _SystemHash.combine(hash, walletName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConnectToWalletFromMnemonicRef on AutoDisposeFutureProviderRef<
    ({String? error, bool success, WalletAddress? data})> {
  /// The parameter `walletMnemonicOrSeed` of this provider.
  String get walletMnemonicOrSeed;

  /// The parameter `walletName` of this provider.
  String? get walletName;
}

class _ConnectToWalletFromMnemonicProviderElement
    extends AutoDisposeFutureProviderElement<
        ({String? error, bool success, WalletAddress? data})>
    with ConnectToWalletFromMnemonicRef {
  _ConnectToWalletFromMnemonicProviderElement(super.provider);

  @override
  String get walletMnemonicOrSeed =>
      (origin as ConnectToWalletFromMnemonicProvider).walletMnemonicOrSeed;
  @override
  String? get walletName =>
      (origin as ConnectToWalletFromMnemonicProvider).walletName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
