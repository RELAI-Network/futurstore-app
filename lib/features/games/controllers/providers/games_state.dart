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
    this.games = const [],
    this.hasMoreGames = true,
  });

  /// Initial state
  const GamesState.initial()
      : this(
          status: AppsStatus.initial,
        );

  /// Feed status
  final AppsStatus status;

  /// Apps
  final List<GameModel> games;

  /// Has more apps
  final bool hasMoreGames;

  @override
  List<Object> get props => [
        status,
        games,
        hasMoreGames,
      ];

  /// Copy with
  GamesState copyWith({
    AppsStatus? status,
    List<GameModel>? apps,
    bool? hasMoreApps,
    List<GameModel>? forYou,
    bool? hasMoreForYouApps,
  }) {
    return GamesState(
      status: status ?? this.status,
      games: apps ?? games,
      hasMoreGames: hasMoreApps ?? hasMoreGames,
    );
  }
}
