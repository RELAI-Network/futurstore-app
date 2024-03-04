// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_file_downloaded_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPackageFileDownloadedHash() =>
    r'e376f854334cd10d6296ea01a1e8dedfba8979ca';

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

/// See also [isPackageFileDownloaded].
@ProviderFor(isPackageFileDownloaded)
const isPackageFileDownloadedProvider = IsPackageFileDownloadedFamily();

/// See also [isPackageFileDownloaded].
class IsPackageFileDownloadedFamily extends Family<AsyncValue<bool>> {
  /// See also [isPackageFileDownloaded].
  const IsPackageFileDownloadedFamily();

  /// See also [isPackageFileDownloaded].
  IsPackageFileDownloadedProvider call(
    String packageName,
  ) {
    return IsPackageFileDownloadedProvider(
      packageName,
    );
  }

  @override
  IsPackageFileDownloadedProvider getProviderOverride(
    covariant IsPackageFileDownloadedProvider provider,
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
  String? get name => r'isPackageFileDownloadedProvider';
}

/// See also [isPackageFileDownloaded].
class IsPackageFileDownloadedProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isPackageFileDownloaded].
  IsPackageFileDownloadedProvider(
    String packageName,
  ) : this._internal(
          (ref) => isPackageFileDownloaded(
            ref as IsPackageFileDownloadedRef,
            packageName,
          ),
          from: isPackageFileDownloadedProvider,
          name: r'isPackageFileDownloadedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPackageFileDownloadedHash,
          dependencies: IsPackageFileDownloadedFamily._dependencies,
          allTransitiveDependencies:
              IsPackageFileDownloadedFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  IsPackageFileDownloadedProvider._internal(
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
    FutureOr<bool> Function(IsPackageFileDownloadedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsPackageFileDownloadedProvider._internal(
        (ref) => create(ref as IsPackageFileDownloadedRef),
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
    return _IsPackageFileDownloadedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsPackageFileDownloadedProvider &&
        other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsPackageFileDownloadedRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _IsPackageFileDownloadedProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with IsPackageFileDownloadedRef {
  _IsPackageFileDownloadedProviderElement(super.provider);

  @override
  String get packageName =>
      (origin as IsPackageFileDownloadedProvider).packageName;
}

String _$isBookFileDownloadedHash() =>
    r'fad5d471d3d658cd427ddb1d9682068867566cea';

/// See also [isBookFileDownloaded].
@ProviderFor(isBookFileDownloaded)
const isBookFileDownloadedProvider = IsBookFileDownloadedFamily();

/// See also [isBookFileDownloaded].
class IsBookFileDownloadedFamily extends Family<AsyncValue<bool>> {
  /// See also [isBookFileDownloaded].
  const IsBookFileDownloadedFamily();

  /// See also [isBookFileDownloaded].
  IsBookFileDownloadedProvider call(
    String isbn,
    String fileExtension,
  ) {
    return IsBookFileDownloadedProvider(
      isbn,
      fileExtension,
    );
  }

  @override
  IsBookFileDownloadedProvider getProviderOverride(
    covariant IsBookFileDownloadedProvider provider,
  ) {
    return call(
      provider.isbn,
      provider.fileExtension,
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
  String? get name => r'isBookFileDownloadedProvider';
}

/// See also [isBookFileDownloaded].
class IsBookFileDownloadedProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isBookFileDownloaded].
  IsBookFileDownloadedProvider(
    String isbn,
    String fileExtension,
  ) : this._internal(
          (ref) => isBookFileDownloaded(
            ref as IsBookFileDownloadedRef,
            isbn,
            fileExtension,
          ),
          from: isBookFileDownloadedProvider,
          name: r'isBookFileDownloadedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isBookFileDownloadedHash,
          dependencies: IsBookFileDownloadedFamily._dependencies,
          allTransitiveDependencies:
              IsBookFileDownloadedFamily._allTransitiveDependencies,
          isbn: isbn,
          fileExtension: fileExtension,
        );

  IsBookFileDownloadedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isbn,
    required this.fileExtension,
  }) : super.internal();

  final String isbn;
  final String fileExtension;

  @override
  Override overrideWith(
    FutureOr<bool> Function(IsBookFileDownloadedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsBookFileDownloadedProvider._internal(
        (ref) => create(ref as IsBookFileDownloadedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isbn: isbn,
        fileExtension: fileExtension,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsBookFileDownloadedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsBookFileDownloadedProvider &&
        other.isbn == isbn &&
        other.fileExtension == fileExtension;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isbn.hashCode);
    hash = _SystemHash.combine(hash, fileExtension.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsBookFileDownloadedRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `isbn` of this provider.
  String get isbn;

  /// The parameter `fileExtension` of this provider.
  String get fileExtension;
}

class _IsBookFileDownloadedProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with IsBookFileDownloadedRef {
  _IsBookFileDownloadedProviderElement(super.provider);

  @override
  String get isbn => (origin as IsBookFileDownloadedProvider).isbn;
  @override
  String get fileExtension =>
      (origin as IsBookFileDownloadedProvider).fileExtension;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
