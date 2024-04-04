// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_reviews.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addBookReviewHash() => r'944a057c8263e69102516bde434278143a57b3ca';

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

/// See also [addBookReview].
@ProviderFor(addBookReview)
const addBookReviewProvider = AddBookReviewFamily();

/// See also [addBookReview].
class AddBookReviewFamily extends Family<
    AsyncValue<({String? error, bool success, BookReview? data})>> {
  /// See also [addBookReview].
  const AddBookReviewFamily();

  /// See also [addBookReview].
  AddBookReviewProvider call({
    required String bookId,
    required double rating,
    String? comment,
  }) {
    return AddBookReviewProvider(
      bookId: bookId,
      rating: rating,
      comment: comment,
    );
  }

  @override
  AddBookReviewProvider getProviderOverride(
    covariant AddBookReviewProvider provider,
  ) {
    return call(
      bookId: provider.bookId,
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
  String? get name => r'addBookReviewProvider';
}

/// See also [addBookReview].
class AddBookReviewProvider extends AutoDisposeFutureProvider<
    ({String? error, bool success, BookReview? data})> {
  /// See also [addBookReview].
  AddBookReviewProvider({
    required String bookId,
    required double rating,
    String? comment,
  }) : this._internal(
          (ref) => addBookReview(
            ref as AddBookReviewRef,
            bookId: bookId,
            rating: rating,
            comment: comment,
          ),
          from: addBookReviewProvider,
          name: r'addBookReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addBookReviewHash,
          dependencies: AddBookReviewFamily._dependencies,
          allTransitiveDependencies:
              AddBookReviewFamily._allTransitiveDependencies,
          bookId: bookId,
          rating: rating,
          comment: comment,
        );

  AddBookReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
    required this.rating,
    required this.comment,
  }) : super.internal();

  final String bookId;
  final double rating;
  final String? comment;

  @override
  Override overrideWith(
    FutureOr<({String? error, bool success, BookReview? data})> Function(
            AddBookReviewRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddBookReviewProvider._internal(
        (ref) => create(ref as AddBookReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
        rating: rating,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
      ({String? error, bool success, BookReview? data})> createElement() {
    return _AddBookReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookReviewProvider &&
        other.bookId == bookId &&
        other.rating == rating &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);
    hash = _SystemHash.combine(hash, rating.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddBookReviewRef on AutoDisposeFutureProviderRef<
    ({String? error, bool success, BookReview? data})> {
  /// The parameter `bookId` of this provider.
  String get bookId;

  /// The parameter `rating` of this provider.
  double get rating;

  /// The parameter `comment` of this provider.
  String? get comment;
}

class _AddBookReviewProviderElement extends AutoDisposeFutureProviderElement<
    ({String? error, bool success, BookReview? data})> with AddBookReviewRef {
  _AddBookReviewProviderElement(super.provider);

  @override
  String get bookId => (origin as AddBookReviewProvider).bookId;
  @override
  double get rating => (origin as AddBookReviewProvider).rating;
  @override
  String? get comment => (origin as AddBookReviewProvider).comment;
}

String _$haveAddedBookReviewHash() =>
    r'137e62a50a055401fa5603b2afdafe9ab0e9a16a';

/// See also [haveAddedBookReview].
@ProviderFor(haveAddedBookReview)
const haveAddedBookReviewProvider = HaveAddedBookReviewFamily();

/// See also [haveAddedBookReview].
class HaveAddedBookReviewFamily extends Family<AsyncValue<bool>> {
  /// See also [haveAddedBookReview].
  const HaveAddedBookReviewFamily();

  /// See also [haveAddedBookReview].
  HaveAddedBookReviewProvider call({
    required String bookId,
  }) {
    return HaveAddedBookReviewProvider(
      bookId: bookId,
    );
  }

  @override
  HaveAddedBookReviewProvider getProviderOverride(
    covariant HaveAddedBookReviewProvider provider,
  ) {
    return call(
      bookId: provider.bookId,
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
  String? get name => r'haveAddedBookReviewProvider';
}

/// See also [haveAddedBookReview].
class HaveAddedBookReviewProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [haveAddedBookReview].
  HaveAddedBookReviewProvider({
    required String bookId,
  }) : this._internal(
          (ref) => haveAddedBookReview(
            ref as HaveAddedBookReviewRef,
            bookId: bookId,
          ),
          from: haveAddedBookReviewProvider,
          name: r'haveAddedBookReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$haveAddedBookReviewHash,
          dependencies: HaveAddedBookReviewFamily._dependencies,
          allTransitiveDependencies:
              HaveAddedBookReviewFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  HaveAddedBookReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final String bookId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(HaveAddedBookReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HaveAddedBookReviewProvider._internal(
        (ref) => create(ref as HaveAddedBookReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _HaveAddedBookReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HaveAddedBookReviewProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HaveAddedBookReviewRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `bookId` of this provider.
  String get bookId;
}

class _HaveAddedBookReviewProviderElement
    extends AutoDisposeFutureProviderElement<bool> with HaveAddedBookReviewRef {
  _HaveAddedBookReviewProviderElement(super.provider);

  @override
  String get bookId => (origin as HaveAddedBookReviewProvider).bookId;
}

String _$myBookReviewHash() => r'91611c8c63119ba031dc71ebec8ff201a514ef86';

/// See also [myBookReview].
@ProviderFor(myBookReview)
const myBookReviewProvider = MyBookReviewFamily();

/// See also [myBookReview].
class MyBookReviewFamily extends Family<AsyncValue<BookReview?>> {
  /// See also [myBookReview].
  const MyBookReviewFamily();

  /// See also [myBookReview].
  MyBookReviewProvider call({
    required String bookId,
  }) {
    return MyBookReviewProvider(
      bookId: bookId,
    );
  }

  @override
  MyBookReviewProvider getProviderOverride(
    covariant MyBookReviewProvider provider,
  ) {
    return call(
      bookId: provider.bookId,
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
  String? get name => r'myBookReviewProvider';
}

/// See also [myBookReview].
class MyBookReviewProvider extends AutoDisposeFutureProvider<BookReview?> {
  /// See also [myBookReview].
  MyBookReviewProvider({
    required String bookId,
  }) : this._internal(
          (ref) => myBookReview(
            ref as MyBookReviewRef,
            bookId: bookId,
          ),
          from: myBookReviewProvider,
          name: r'myBookReviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myBookReviewHash,
          dependencies: MyBookReviewFamily._dependencies,
          allTransitiveDependencies:
              MyBookReviewFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  MyBookReviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final String bookId;

  @override
  Override overrideWith(
    FutureOr<BookReview?> Function(MyBookReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyBookReviewProvider._internal(
        (ref) => create(ref as MyBookReviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BookReview?> createElement() {
    return _MyBookReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyBookReviewProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyBookReviewRef on AutoDisposeFutureProviderRef<BookReview?> {
  /// The parameter `bookId` of this provider.
  String get bookId;
}

class _MyBookReviewProviderElement
    extends AutoDisposeFutureProviderElement<BookReview?> with MyBookReviewRef {
  _MyBookReviewProviderElement(super.provider);

  @override
  String get bookId => (origin as MyBookReviewProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
