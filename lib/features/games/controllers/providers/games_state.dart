part of 'games_state_provider.dart';

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
class GamesState extends Equatable {
  /// Default constructor
  const GamesState({
    required this.status,
    this.apps = const {},
    this.hasMoreApps = const {},
    this.hasMoreForYouApps = false,
    this.forYou = const [],
  });

  /// Initial state
  const GamesState.initial()
      : this(
          status: AppsStatus.initial,
        );

  /// Feed status
  final AppsStatus status;

  /// For you apps
  final List<GameModel> forYou;

  /// Has more top news
  final bool hasMoreForYouApps;

  /// Apps
  final Map<ItemCategory, List<GameModel>> apps;

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
  GamesState copyWith({
    AppsStatus? status,
    Map<ItemCategory, List<GameModel>>? apps,
    Map<ItemCategory, bool>? hasMoreApps,
    List<GameModel>? forYou,
    bool? hasMoreForYouApps,
  }) {
    return GamesState(
      status: status ?? this.status,
      apps: apps ?? this.apps,
      hasMoreApps: hasMoreApps ?? this.hasMoreApps,
      forYou: forYou ?? this.forYou,
      hasMoreForYouApps: hasMoreForYouApps ?? this.hasMoreForYouApps,
    );
  }
}
