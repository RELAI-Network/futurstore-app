// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_package_installed_func_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openInstalledPackageHash() =>
    r'930564b51c2e9a41146cb2e698b3fa1de975f675';

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

/// See also [openInstalledPackage].
@ProviderFor(openInstalledPackage)
const openInstalledPackageProvider = OpenInstalledPackageFamily();

/// See also [openInstalledPackage].
class OpenInstalledPackageFamily extends Family<AsyncValue<bool>> {
  /// See also [openInstalledPackage].
  const OpenInstalledPackageFamily();

  /// See also [openInstalledPackage].
  OpenInstalledPackageProvider call(
    String packageName,
  ) {
    return OpenInstalledPackageProvider(
      packageName,
    );
  }

  @override
  OpenInstalledPackageProvider getProviderOverride(
    covariant OpenInstalledPackageProvider provider,
  ) {
    return call(
      provider.packageName,
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
  String? get name => r'openInstalledPackageProvider';
}

/// See also [openInstalledPackage].
class OpenInstalledPackageProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [openInstalledPackage].
  OpenInstalledPackageProvider(
    String packageName,
  ) : this._internal(
          (ref) => openInstalledPackage(
            ref as OpenInstalledPackageRef,
            packageName,
          ),
          from: openInstalledPackageProvider,
          name: r'openInstalledPackageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$openInstalledPackageHash,
          dependencies: OpenInstalledPackageFamily._dependencies,
          allTransitiveDependencies:
              OpenInstalledPackageFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  OpenInstalledPackageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.packageName,
  }) : super.internal();

  final String packageName;

  @override
  Override overrideWith(
    FutureOr<bool> Function(OpenInstalledPackageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OpenInstalledPackageProvider._internal(
        (ref) => create(ref as OpenInstalledPackageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        packageName: packageName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _OpenInstalledPackageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OpenInstalledPackageProvider &&
        other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OpenInstalledPackageRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _OpenInstalledPackageProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with OpenInstalledPackageRef {
  _OpenInstalledPackageProviderElement(super.provider);

  @override
  String get packageName =>
      (origin as OpenInstalledPackageProvider).packageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
