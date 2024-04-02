// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addReviewHash() => r'5c418b5db68dd2e246240c3e03ac969a8895f48f';

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

/// See also [addReview].
@ProviderFor(addReview)
const addReviewProvider = AddReviewFamily();

/// See also [addReview].
class AddReviewFamily extends Family<
    AsyncValue<({String? error, bool success, AppReview? data})>> {
  /// See also [addReview].
  const AddReviewFamily();

  /// See also [addReview].
  AddReviewProvider call({
    required String applicationId,
    required double rating,
    String? comment,
  }) {
    return AddReviewProvider(
      applicationId: applicationId,
      rating: rating,
      comment: comment,
    );
  }

  @override
  AddReviewProvider getProviderOverride(
    covariant AddReviewProvider provider,
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
  String? get name => r'addReviewProvider';
}

/// See also [addReview].
class AddReviewProvider extends AutoDisposeFutureProvider<
    ({String? error, bool success, AppReview? data})> {
  /// See also [addReview].
  AddReviewProvider({
    required String applicationId,
    required double rating,
    String? comment,
  }) : this._internal(
          (ref) => addReview(
            ref as AddReviewRef,
            applicationId: applicationId,
            rating: rating,
            comment: comment,
          ),
          from: addReviewProvider,
          name: r'addReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addReviewHash,
          dependencies: AddReviewFamily._dependencies,
          allTransitiveDependencies: AddReviewFamily._allTransitiveDependencies,
          applicationId: applicationId,
          rating: rating,
          comment: comment,
        );

  AddReviewProvider._internal(
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
            AddReviewRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddReviewProvider._internal(
        (ref) => create(ref as AddReviewRef),
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
    return _AddReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddReviewProvider &&
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

mixin AddReviewRef on AutoDisposeFutureProviderRef<
    ({String? error, bool success, AppReview? data})> {
  /// The parameter `applicationId` of this provider.
  String get applicationId;

  /// The parameter `rating` of this provider.
  double get rating;

  /// The parameter `comment` of this provider.
  String? get comment;
}

class _AddReviewProviderElement extends AutoDisposeFutureProviderElement<
    ({String? error, bool success, AppReview? data})> with AddReviewRef {
  _AddReviewProviderElement(super.provider);

  @override
  String get applicationId => (origin as AddReviewProvider).applicationId;
  @override
  double get rating => (origin as AddReviewProvider).rating;
  @override
  String? get comment => (origin as AddReviewProvider).comment;
}

String _$haveAddedReviewHash() => r'd52b90da44130878e858dd48b4f39a8f41132689';

/// See also [haveAddedReview].
@ProviderFor(haveAddedReview)
const haveAddedReviewProvider = HaveAddedReviewFamily();

/// See also [haveAddedReview].
class HaveAddedReviewFamily extends Family<AsyncValue<bool>> {
  /// See also [haveAddedReview].
  const HaveAddedReviewFamily();

  /// See also [haveAddedReview].
  HaveAddedReviewProvider call({
    required String applicationId,
  }) {
    return HaveAddedReviewProvider(
      applicationId: applicationId,
    );
  }

  @override
  HaveAddedReviewProvider getProviderOverride(
    covariant HaveAddedReviewProvider provider,
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
  String? get name => r'haveAddedReviewProvider';
}

/// See also [haveAddedReview].
class HaveAddedReviewProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [haveAddedReview].
  HaveAddedReviewProvider({
    required String applicationId,
  }) : this._internal(
          (ref) => haveAddedReview(
            ref as HaveAddedReviewRef,
            applicationId: applicationId,
          ),
          from: haveAddedReviewProvider,
          name: r'haveAddedReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$haveAddedReviewHash,
          dependencies: HaveAddedReviewFamily._dependencies,
          allTransitiveDependencies:
              HaveAddedReviewFamily._allTransitiveDependencies,
          applicationId: applicationId,
        );

  HaveAddedReviewProvider._internal(
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
    FutureOr<bool> Function(HaveAddedReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HaveAddedReviewProvider._internal(
        (ref) => create(ref as HaveAddedReviewRef),
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
    return _HaveAddedReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HaveAddedReviewProvider &&
        other.applicationId == applicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, applicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HaveAddedReviewRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `applicationId` of this provider.
  String get applicationId;
}

class _HaveAddedReviewProviderElement
    extends AutoDisposeFutureProviderElement<bool> with HaveAddedReviewRef {
  _HaveAddedReviewProviderElement(super.provider);

  @override
  String get applicationId => (origin as HaveAddedReviewProvider).applicationId;
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
