// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_package_installed_func_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPackageInstalledHash() =>
    r'e81c155ba7810ed0d123a9dd72d38f6c971db7bf';

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

/// See also [isPackageInstalled].
@ProviderFor(isPackageInstalled)
const isPackageInstalledProvider = IsPackageInstalledFamily();

/// See also [isPackageInstalled].
class IsPackageInstalledFamily extends Family<AsyncValue<bool>> {
  /// See also [isPackageInstalled].
  const IsPackageInstalledFamily();

  /// See also [isPackageInstalled].
  IsPackageInstalledProvider call(
    String packageName,
  ) {
    return IsPackageInstalledProvider(
      packageName,
    );
  }

  @override
  IsPackageInstalledProvider getProviderOverride(
    covariant IsPackageInstalledProvider provider,
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
  String? get name => r'isPackageInstalledProvider';
}

/// See also [isPackageInstalled].
class IsPackageInstalledProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isPackageInstalled].
  IsPackageInstalledProvider(
    String packageName,
  ) : this._internal(
          (ref) => isPackageInstalled(
            ref as IsPackageInstalledRef,
            packageName,
          ),
          from: isPackageInstalledProvider,
          name: r'isPackageInstalledProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPackageInstalledHash,
          dependencies: IsPackageInstalledFamily._dependencies,
          allTransitiveDependencies:
              IsPackageInstalledFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  IsPackageInstalledProvider._internal(
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
    FutureOr<bool> Function(IsPackageInstalledRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsPackageInstalledProvider._internal(
        (ref) => create(ref as IsPackageInstalledRef),
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
    return _IsPackageInstalledProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsPackageInstalledProvider &&
        other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsPackageInstalledRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _IsPackageInstalledProviderElement
    extends AutoDisposeFutureProviderElement<bool> with IsPackageInstalledRef {
  _IsPackageInstalledProviderElement(super.provider);

  @override
  String get packageName => (origin as IsPackageInstalledProvider).packageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
