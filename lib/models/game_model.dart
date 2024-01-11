class GameModel {
  String? logoUrl;
  String? title;
  String? description;
  GameCategory? category;
  String? gameSize;

  GameModel({
    this.logoUrl,
    this.title,
    this.description,
    this.category,
    this.gameSize,
  });
}

enum GameCategory {
  Sport,
  FPS,
  Strategy,
  Reflexion,
  Other
}