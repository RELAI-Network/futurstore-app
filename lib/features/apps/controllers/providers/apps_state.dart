part of 'apps_state_provider.dart';

/// Apps status
enum AppsStatus {
  /// Initial state
  initial,

  /// Loading
  loading,

  /// Populated
  populated,

  /// Failure
  failure,
}

/// Apps state
class AppsState extends Equatable {
  /// Default constructor
  const AppsState({
    required this.status,
    this.apps = const {},
    this.hasMoreApps = const {},
    this.hasMoreForYouApps = false,
    this.forYou = const [],
  });

  /// Initial state
  const AppsState.initial()
      : this(
          status: AppsStatus.initial,
        );

  /// Feed status
  final AppsStatus status;

  /// For you apps
  final List<ApplicationModel> forYou;

  /// Has more top news
  final bool hasMoreForYouApps;

  /// Apps
  final Map<ItemCategory, List<ApplicationModel>> apps;

  /// Has more apps
  final Map<ItemCategory, bool> hasMoreApps;

  @override
  List<Object> get props => [
        status,
        apps,
        hasMoreApps,
        forYou,
      ];

  /// Copy with
  AppsState copyWith({
    AppsStatus? status,
    Map<ItemCategory, List<ApplicationModel>>? apps,
    Map<ItemCategory, bool>? hasMoreApps,
    List<ApplicationModel>? forYou,
    bool? hasMoreForYouApps,
  }) {
    return AppsState(
      status: status ?? this.status,
      apps: apps ?? this.apps,
      hasMoreApps: hasMoreApps ?? this.hasMoreApps,
      forYou: forYou ?? this.forYou,
      hasMoreForYouApps: hasMoreForYouApps ?? this.hasMoreForYouApps,
    );
  }
}
