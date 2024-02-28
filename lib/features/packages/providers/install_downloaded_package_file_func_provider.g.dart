// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'install_downloaded_package_file_func_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$installDownloadedPackageFileHash() =>
    r'1c17c414e02893794ebb9cadc08e22bda59fb8aa';

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

/// See also [installDownloadedPackageFile].
@ProviderFor(installDownloadedPackageFile)
const installDownloadedPackageFileProvider =
    InstallDownloadedPackageFileFamily();

/// See also [installDownloadedPackageFile].
class InstallDownloadedPackageFileFamily extends Family<AsyncValue<bool>> {
  /// See also [installDownloadedPackageFile].
  const InstallDownloadedPackageFileFamily();

  /// See also [installDownloadedPackageFile].
  InstallDownloadedPackageFileProvider call(
    String packageName,
  ) {
    return InstallDownloadedPackageFileProvider(
      packageName,
    );
  }

  @override
  InstallDownloadedPackageFileProvider getProviderOverride(
    covariant InstallDownloadedPackageFileProvider provider,
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
  String? get name => r'installDownloadedPackageFileProvider';
}

/// See also [installDownloadedPackageFile].
class InstallDownloadedPackageFileProvider
    extends AutoDisposeFutureProvider<bool> {
  /// See also [installDownloadedPackageFile].
  InstallDownloadedPackageFileProvider(
    String packageName,
  ) : this._internal(
          (ref) => installDownloadedPackageFile(
            ref as InstallDownloadedPackageFileRef,
            packageName,
          ),
          from: installDownloadedPackageFileProvider,
          name: r'installDownloadedPackageFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$installDownloadedPackageFileHash,
          dependencies: InstallDownloadedPackageFileFamily._dependencies,
          allTransitiveDependencies:
              InstallDownloadedPackageFileFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  InstallDownloadedPackageFileProvider._internal(
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
    FutureOr<bool> Function(InstallDownloadedPackageFileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InstallDownloadedPackageFileProvider._internal(
        (ref) => create(ref as InstallDownloadedPackageFileRef),
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
    return _InstallDownloadedPackageFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InstallDownloadedPackageFileProvider &&
        other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InstallDownloadedPackageFileRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _InstallDownloadedPackageFileProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with InstallDownloadedPackageFileRef {
  _InstallDownloadedPackageFileProviderElement(super.provider);

  @override
  String get packageName =>
      (origin as InstallDownloadedPackageFileProvider).packageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
