// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_file_installer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$applicationFileInstallHash() =>
    r'c8d73b4052a761938d87528c2d093d41b06a0d45';

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

/// See also [applicationFileInstall].
@ProviderFor(applicationFileInstall)
const applicationFileInstallProvider = ApplicationFileInstallFamily();

/// See also [applicationFileInstall].
class ApplicationFileInstallFamily extends Family<AsyncValue<void>> {
  /// See also [applicationFileInstall].
  const ApplicationFileInstallFamily();

  /// See also [applicationFileInstall].
  ApplicationFileInstallProvider call(
    String url,
    String packageName, {
    void Function(double)? onDownloadProgress,
    void Function(DownloadTaskStatus)? onDownloadStatus,
    void Function(InstallTaskStatus)? onStatus,
  }) {
    return ApplicationFileInstallProvider(
      url,
      packageName,
      onDownloadProgress: onDownloadProgress,
      onDownloadStatus: onDownloadStatus,
      onStatus: onStatus,
    );
  }

  @override
  ApplicationFileInstallProvider getProviderOverride(
    covariant ApplicationFileInstallProvider provider,
  ) {
    return call(
      provider.url,
      provider.packageName,
      onDownloadProgress: provider.onDownloadProgress,
      onDownloadStatus: provider.onDownloadStatus,
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
  String? get name => r'applicationFileInstallProvider';
}

/// See also [applicationFileInstall].
class ApplicationFileInstallProvider extends AutoDisposeFutureProvider<void> {
  /// See also [applicationFileInstall].
  ApplicationFileInstallProvider(
    String url,
    String packageName, {
    void Function(double)? onDownloadProgress,
    void Function(DownloadTaskStatus)? onDownloadStatus,
    void Function(InstallTaskStatus)? onStatus,
  }) : this._internal(
          (ref) => applicationFileInstall(
            ref as ApplicationFileInstallRef,
            url,
            packageName,
            onDownloadProgress: onDownloadProgress,
            onDownloadStatus: onDownloadStatus,
            onStatus: onStatus,
          ),
          from: applicationFileInstallProvider,
          name: r'applicationFileInstallProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$applicationFileInstallHash,
          dependencies: ApplicationFileInstallFamily._dependencies,
          allTransitiveDependencies:
              ApplicationFileInstallFamily._allTransitiveDependencies,
          url: url,
          packageName: packageName,
          onDownloadProgress: onDownloadProgress,
          onDownloadStatus: onDownloadStatus,
          onStatus: onStatus,
        );

  ApplicationFileInstallProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
    required this.packageName,
    required this.onDownloadProgress,
    required this.onDownloadStatus,
    required this.onStatus,
  }) : super.internal();

  final String url;
  final String packageName;
  final void Function(double)? onDownloadProgress;
  final void Function(DownloadTaskStatus)? onDownloadStatus;
  final void Function(InstallTaskStatus)? onStatus;

  @override
  Override overrideWith(
    FutureOr<void> Function(ApplicationFileInstallRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApplicationFileInstallProvider._internal(
        (ref) => create(ref as ApplicationFileInstallRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
        packageName: packageName,
        onDownloadProgress: onDownloadProgress,
        onDownloadStatus: onDownloadStatus,
        onStatus: onStatus,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _ApplicationFileInstallProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationFileInstallProvider &&
        other.url == url &&
        other.packageName == packageName &&
        other.onDownloadProgress == onDownloadProgress &&
        other.onDownloadStatus == onDownloadStatus &&
        other.onStatus == onStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);
    hash = _SystemHash.combine(hash, onDownloadProgress.hashCode);
    hash = _SystemHash.combine(hash, onDownloadStatus.hashCode);
    hash = _SystemHash.combine(hash, onStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApplicationFileInstallRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `url` of this provider.
  String get url;

  /// The parameter `packageName` of this provider.
  String get packageName;

  /// The parameter `onDownloadProgress` of this provider.
  void Function(double)? get onDownloadProgress;

  /// The parameter `onDownloadStatus` of this provider.
  void Function(DownloadTaskStatus)? get onDownloadStatus;

  /// The parameter `onStatus` of this provider.
  void Function(InstallTaskStatus)? get onStatus;
}

class _ApplicationFileInstallProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with ApplicationFileInstallRef {
  _ApplicationFileInstallProviderElement(super.provider);

  @override
  String get url => (origin as ApplicationFileInstallProvider).url;
  @override
  String get packageName =>
      (origin as ApplicationFileInstallProvider).packageName;
  @override
  void Function(double)? get onDownloadProgress =>
      (origin as ApplicationFileInstallProvider).onDownloadProgress;
  @override
  void Function(DownloadTaskStatus)? get onDownloadStatus =>
      (origin as ApplicationFileInstallProvider).onDownloadStatus;
  @override
  void Function(InstallTaskStatus)? get onStatus =>
      (origin as ApplicationFileInstallProvider).onStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
