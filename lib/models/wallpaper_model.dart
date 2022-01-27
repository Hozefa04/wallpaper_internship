class WallpaperModel {
  final id;
  final urls;
  WallpaperModel(this.id, this.urls);

  factory WallpaperModel.fromJson(Map<String, dynamic> json) {
    return WallpaperModel(json['id'], json['urls']);
  }

}