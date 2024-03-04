// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_downloader_func_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$backgroundDownloadBookFileHash() =>
    r'478cdce9bb2185465038ccf4ae22195d2c0c2f33';

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

/// See also [backgroundDownloadBookFile].
@ProviderFor(backgroundDownloadBookFile)
const backgroundDownloadBookFileProvider = BackgroundDownloadBookFileFamily();

/// See also [backgroundDownloadBookFile].
class BackgroundDownloadBookFileFamily extends Family<AsyncValue<File>> {
  /// See also [backgroundDownloadBookFile].
  const BackgroundDownloadBookFileFamily();

  /// See also [backgroundDownloadBookFile].
  BackgroundDownloadBookFileProvider call(
    String url,
    String isbn,
    String extension, {
    void Function(double)? onProgress,
    void Function(DownloadTaskStatus)? onStatus,
  }) {
    return BackgroundDownloadBookFileProvider(
      url,
      isbn,
      extension,
      onProgress: onProgress,
      onStatus: onStatus,
    );
  }

  @override
  BackgroundDownloadBookFileProvider getProviderOverride(
    covariant BackgroundDownloadBookFileProvider provider,
  ) {
    return call(
      provider.url,
      provider.isbn,
      provider.extension,
      onProgress: provider.onProgress,
      onStatus: provider.onStatus,
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
  String? get name => r'backgroundDownloadBookFileProvider';
}

/// See also [backgroundDownloadBookFile].
class BackgroundDownloadBookFileProvider
    extends AutoDisposeFutureProvider<File> {
  /// See also [backgroundDownloadBookFile].
  BackgroundDownloadBookFileProvider(
    String url,
    String isbn,
    String extension, {
    void Function(double)? onProgress,
    void Function(DownloadTaskStatus)? onStatus,
  }) : this._internal(
          (ref) => backgroundDownloadBookFile(
            ref as BackgroundDownloadBookFileRef,
            url,
            isbn,
            extension,
            onProgress: onProgress,
            onStatus: onStatus,
          ),
          from: backgroundDownloadBookFileProvider,
          name: r'backgroundDownloadBookFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$backgroundDownloadBookFileHash,
          dependencies: BackgroundDownloadBookFileFamily._dependencies,
          allTransitiveDependencies:
              BackgroundDownloadBookFileFamily._allTransitiveDependencies,
          url: url,
          isbn: isbn,
          extension: extension,
          onProgress: onProgress,
          onStatus: onStatus,
        );

  BackgroundDownloadBookFileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
    required this.isbn,
    required this.extension,
    required this.onProgress,
    required this.onStatus,
  }) : super.internal();

  final String url;
  final String isbn;
  final String extension;
  final void Function(double)? onProgress;
  final void Function(DownloadTaskStatus)? onStatus;

  @override
  Override overrideWith(
    FutureOr<File> Function(BackgroundDownloadBookFileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BackgroundDownloadBookFileProvider._internal(
        (ref) => create(ref as BackgroundDownloadBookFileRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
        isbn: isbn,
        extension: extension,
        onProgress: onProgress,
        onStatus: onStatus,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<File> createElement() {
    return _BackgroundDownloadBookFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BackgroundDownloadBookFileProvider &&
        other.url == url &&
        other.isbn == isbn &&
        other.extension == extension &&
        other.onProgress == onProgress &&
        other.onStatus == onStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, isbn.hashCode);
    hash = _SystemHash.combine(hash, extension.hashCode);
    hash = _SystemHash.combine(hash, onProgress.hashCode);
    hash = _SystemHash.combine(hash, onStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BackgroundDownloadBookFileRef on AutoDisposeFutureProviderRef<File> {
  /// The parameter `url` of this provider.
  String get url;

  /// The parameter `isbn` of this provider.
  String get isbn;

  /// The parameter `extension` of this provider.
  String get extension;

  /// The parameter `onProgress` of this provider.
  void Function(double)? get onProgress;

  /// The parameter `onStatus` of this provider.
  void Function(DownloadTaskStatus)? get onStatus;
}

class _BackgroundDownloadBookFileProviderElement
    extends AutoDisposeFutureProviderElement<File>
    with BackgroundDownloadBookFileRef {
  _BackgroundDownloadBookFileProviderElement(super.provider);

  @override
  String get url => (origin as BackgroundDownloadBookFileProvider).url;
  @override
  String get isbn => (origin as BackgroundDownloadBookFileProvider).isbn;
  @override
  String get extension =>
      (origin as BackgroundDownloadBookFileProvider).extension;
  @override
  void Function(double)? get onProgress =>
      (origin as BackgroundDownloadBookFileProvider).onProgress;
  @override
  void Function(DownloadTaskStatus)? get onStatus =>
      (origin as BackgroundDownloadBookFileProvider).onStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
