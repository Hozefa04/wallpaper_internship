class Wallpaper {
  final id;
  final urls;
  Wallpaper(this.id, this.urls);

  factory Wallpaper.fromJson(Map<String, dynamic> json) {
    return Wallpaper(json['id'], json['urls']);
  }

}