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
    this.apps = const [],
    this.hasMoreApps = true,
    this.error,
  });

  /// Initial state
  const AppsState.initial()
      : this(
          status: AppsStatus.initial,
        );

  /// Feed status
  final AppsStatus status;

  /// Apps
  final List<ApplicationModel> apps;

  /// Has more apps
  final bool hasMoreApps;

  final String? error;

  @override
  List<Object> get props => [
        status,
        apps,
        hasMoreApps,
      ];

  /// Copy with
  AppsState copyWith({
    AppsStatus? status,
    List<ApplicationModel>? apps,
    bool? hasMoreApps,
  }) {
    return AppsState(
      status: status ?? this.status,
      apps: apps ?? this.apps,
      hasMoreApps: hasMoreApps ?? this.hasMoreApps,
    );
  }

  AppsState withError(String error) {
    return AppsState(
      status: status,
      apps: apps,
      hasMoreApps: hasMoreApps,
      error: error,
    );
  }
}
