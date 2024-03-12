class AIComicCharacterModel {
  String? id;
  String? name;
  String? avatar;
  bool isFavorite = false;
  int? numberChat;

  AIComicCharacterModel(
      {this.id,
      this.name,
      this.avatar,
      this.isFavorite = false,
      this.numberChat});
}
