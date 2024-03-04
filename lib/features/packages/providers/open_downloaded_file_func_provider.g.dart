// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_downloaded_file_func_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openDownloadedEbookFileHash() =>
    r'80d302588c7fc3485d9eb879d00e9c3c1489f8f8';

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

/// See also [openDownloadedEbookFile].
@ProviderFor(openDownloadedEbookFile)
const openDownloadedEbookFileProvider = OpenDownloadedEbookFileFamily();

/// See also [openDownloadedEbookFile].
class OpenDownloadedEbookFileFamily extends Family<AsyncValue<bool>> {
  /// See also [openDownloadedEbookFile].
  const OpenDownloadedEbookFileFamily();

  /// See also [openDownloadedEbookFile].
  OpenDownloadedEbookFileProvider call(
    String isbn,
    String fileExtension,
  ) {
    return OpenDownloadedEbookFileProvider(
      isbn,
      fileExtension,
    );
  }

  @override
  OpenDownloadedEbookFileProvider getProviderOverride(
    covariant OpenDownloadedEbookFileProvider provider,
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
  String? get name => r'openDownloadedEbookFileProvider';
}

/// See also [openDownloadedEbookFile].
class OpenDownloadedEbookFileProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [openDownloadedEbookFile].
  OpenDownloadedEbookFileProvider(
    String isbn,
    String fileExtension,
  ) : this._internal(
          (ref) => openDownloadedEbookFile(
            ref as OpenDownloadedEbookFileRef,
            isbn,
            fileExtension,
          ),
          from: openDownloadedEbookFileProvider,
          name: r'openDownloadedEbookFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$openDownloadedEbookFileHash,
          dependencies: OpenDownloadedEbookFileFamily._dependencies,
          allTransitiveDependencies:
              OpenDownloadedEbookFileFamily._allTransitiveDependencies,
          isbn: isbn,
          fileExtension: fileExtension,
        );

  OpenDownloadedEbookFileProvider._internal(
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
    FutureOr<bool> Function(OpenDownloadedEbookFileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OpenDownloadedEbookFileProvider._internal(
        (ref) => create(ref as OpenDownloadedEbookFileRef),
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
    return _OpenDownloadedEbookFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OpenDownloadedEbookFileProvider &&
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

mixin OpenDownloadedEbookFileRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `isbn` of this provider.
  String get isbn;

  /// The parameter `fileExtension` of this provider.
  String get fileExtension;
}

class _OpenDownloadedEbookFileProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with OpenDownloadedEbookFileRef {
  _OpenDownloadedEbookFileProviderElement(super.provider);

  @override
  String get isbn => (origin as OpenDownloadedEbookFileProvider).isbn;
  @override
  String get fileExtension =>
      (origin as OpenDownloadedEbookFileProvider).fileExtension;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
