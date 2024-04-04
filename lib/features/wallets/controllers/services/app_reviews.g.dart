// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_reviews.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addAppReviewHash() => r'6dd48146d4ffde208e1ac350bb866409694fc225';

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

/// See also [addAppReview].
@ProviderFor(addAppReview)
const addAppReviewProvider = AddAppReviewFamily();

/// See also [addAppReview].
class AddAppReviewFamily extends Family<
    AsyncValue<({String? error, bool success, AppReview? data})>> {
  /// See also [addAppReview].
  const AddAppReviewFamily();

  /// See also [addAppReview].
  AddAppReviewProvider call({
    required String applicationId,
    required double rating,
    String? comment,
  }) {
    return AddAppReviewProvider(
      applicationId: applicationId,
      rating: rating,
      comment: comment,
    );
  }

  @override
  AddAppReviewProvider getProviderOverride(
    covariant AddAppReviewProvider provider,
  ) {
    return call(
      applicationId: provider.applicationId,
      rating: provider.rating,
      comment: provider.comment,
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
  String? get name => r'addAppReviewProvider';
}

/// See also [addAppReview].
class AddAppReviewProvider extends AutoDisposeFutureProvider<
    ({String? error, bool success, AppReview? data})> {
  /// See also [addAppReview].
  AddAppReviewProvider({
    required String applicationId,
    required double rating,
    String? comment,
  }) : this._internal(
          (ref) => addAppReview(
            ref as AddAppReviewRef,
            applicationId: applicationId,
            rating: rating,
            comment: comment,
          ),
          from: addAppReviewProvider,
          name: r'addAppReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addAppReviewHash,
          dependencies: AddAppReviewFamily._dependencies,
          allTransitiveDependencies:
              AddAppReviewFamily._allTransitiveDependencies,
          applicationId: applicationId,
          rating: rating,
          comment: comment,
        );

  AddAppReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.applicationId,
    required this.rating,
    required this.comment,
  }) : super.internal();

  final String applicationId;
  final double rating;
  final String? comment;

  @override
  Override overrideWith(
    FutureOr<({String? error, bool success, AppReview? data})> Function(
            AddAppReviewRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddAppReviewProvider._internal(
        (ref) => create(ref as AddAppReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        applicationId: applicationId,
        rating: rating,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
      ({String? error, bool success, AppReview? data})> createElement() {
    return _AddAppReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddAppReviewProvider &&
        other.applicationId == applicationId &&
        other.rating == rating &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, applicationId.hashCode);
    hash = _SystemHash.combine(hash, rating.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddAppReviewRef on AutoDisposeFutureProviderRef<
    ({String? error, bool success, AppReview? data})> {
  /// The parameter `applicationId` of this provider.
  String get applicationId;

  /// The parameter `rating` of this provider.
  double get rating;

  /// The parameter `comment` of this provider.
  String? get comment;
}

class _AddAppReviewProviderElement extends AutoDisposeFutureProviderElement<
    ({String? error, bool success, AppReview? data})> with AddAppReviewRef {
  _AddAppReviewProviderElement(super.provider);

  @override
  String get applicationId => (origin as AddAppReviewProvider).applicationId;
  @override
  double get rating => (origin as AddAppReviewProvider).rating;
  @override
  String? get comment => (origin as AddAppReviewProvider).comment;
}

String _$haveAddedAppReviewHash() =>
    r'58909f732977fd856a267407b407e653d7a14796';

/// See also [haveAddedAppReview].
@ProviderFor(haveAddedAppReview)
const haveAddedAppReviewProvider = HaveAddedAppReviewFamily();

/// See also [haveAddedAppReview].
class HaveAddedAppReviewFamily extends Family<AsyncValue<bool>> {
  /// See also [haveAddedAppReview].
  const HaveAddedAppReviewFamily();

  /// See also [haveAddedAppReview].
  HaveAddedAppReviewProvider call({
    required String applicationId,
  }) {
    return HaveAddedAppReviewProvider(
      applicationId: applicationId,
    );
  }

  @override
  HaveAddedAppReviewProvider getProviderOverride(
    covariant HaveAddedAppReviewProvider provider,
  ) {
    return call(
      applicationId: provider.applicationId,
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
  String? get name => r'haveAddedAppReviewProvider';
}

/// See also [haveAddedAppReview].
class HaveAddedAppReviewProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [haveAddedAppReview].
  HaveAddedAppReviewProvider({
    required String applicationId,
  }) : this._internal(
          (ref) => haveAddedAppReview(
            ref as HaveAddedAppReviewRef,
            applicationId: applicationId,
          ),
          from: haveAddedAppReviewProvider,
          name: r'haveAddedAppReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$haveAddedAppReviewHash,
          dependencies: HaveAddedAppReviewFamily._dependencies,
          allTransitiveDependencies:
              HaveAddedAppReviewFamily._allTransitiveDependencies,
          applicationId: applicationId,
        );

  HaveAddedAppReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.applicationId,
  }) : super.internal();

  final String applicationId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(HaveAddedAppReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HaveAddedAppReviewProvider._internal(
        (ref) => create(ref as HaveAddedAppReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        applicationId: applicationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _HaveAddedAppReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HaveAddedAppReviewProvider &&
        other.applicationId == applicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, applicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HaveAddedAppReviewRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `applicationId` of this provider.
  String get applicationId;
}

class _HaveAddedAppReviewProviderElement
    extends AutoDisposeFutureProviderElement<bool> with HaveAddedAppReviewRef {
  _HaveAddedAppReviewProviderElement(super.provider);

  @override
  String get applicationId =>
      (origin as HaveAddedAppReviewProvider).applicationId;
}

String _$myAppReviewHash() => r'f59544169b79b575067436d2bc596d96eff04037';

/// See also [myAppReview].
@ProviderFor(myAppReview)
const myAppReviewProvider = MyAppReviewFamily();

/// See also [myAppReview].
class MyAppReviewFamily extends Family<AsyncValue<AppReview?>> {
  /// See also [myAppReview].
  const MyAppReviewFamily();

  /// See also [myAppReview].
  MyAppReviewProvider call({
    required String applicationId,
  }) {
    return MyAppReviewProvider(
      applicationId: applicationId,
    );
  }

  @override
  MyAppReviewProvider getProviderOverride(
    covariant MyAppReviewProvider provider,
  ) {
    return call(
      applicationId: provider.applicationId,
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
  String? get name => r'myAppReviewProvider';
}

/// See also [myAppReview].
class MyAppReviewProvider extends AutoDisposeFutureProvider<AppReview?> {
  /// See also [myAppReview].
  MyAppReviewProvider({
    required String applicationId,
  }) : this._internal(
          (ref) => myAppReview(
            ref as MyAppReviewRef,
            applicationId: applicationId,
          ),
          from: myAppReviewProvider,
          name: r'myAppReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myAppReviewHash,
          dependencies: MyAppReviewFamily._dependencies,
          allTransitiveDependencies:
              MyAppReviewFamily._allTransitiveDependencies,
          applicationId: applicationId,
        );

  MyAppReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.applicationId,
  }) : super.internal();

  final String applicationId;

  @override
  Override overrideWith(
    FutureOr<AppReview?> Function(MyAppReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyAppReviewProvider._internal(
        (ref) => create(ref as MyAppReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        applicationId: applicationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AppReview?> createElement() {
    return _MyAppReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyAppReviewProvider && other.applicationId == applicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, applicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyAppReviewRef on AutoDisposeFutureProviderRef<AppReview?> {
  /// The parameter `applicationId` of this provider.
  String get applicationId;
}

class _MyAppReviewProviderElement
    extends AutoDisposeFutureProviderElement<AppReview?> with MyAppReviewRef {
  _MyAppReviewProviderElement(super.provider);

  @override
  String get applicationId => (origin as MyAppReviewProvider).applicationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
