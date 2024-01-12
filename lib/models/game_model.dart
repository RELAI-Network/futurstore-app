class GameModel {
  String? logoUrl;
  String? title;
  String? description;
  GameCategory? category;
  String? gameSize;
  bool? online;


  GameModel({
    this.logoUrl,
    this.title,
    this.description,
    this.category,
    this.gameSize,
    this.online,
  });
}

enum GameCategory {
  Sport,
  FPS,
  Strategy,
  Reflexion,
  Other
}
