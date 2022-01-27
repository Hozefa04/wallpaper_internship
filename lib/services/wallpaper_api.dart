import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:wallpapers/models/wallpaper_model.dart';

class WallpaperController extends GetxController {
  final String key = "e6swVLsY4pG6V_uTprjHYP4yRwx6nwgfjHqTBSnHnGU";

  var wallpaperList = <WallpaperModel>[].obs;
  var streetWallpapers = <WallpaperModel>[].obs;
  var travelWallpapers = <WallpaperModel>[].obs;

  Future<void> getAllWallpapers() async {
    try {
      var response = await Dio().get('https://api.unsplash.com/photos/?client_id=$key&per_page=20');
      print(response.data);
      if (response.statusCode == 200) {
        var parsedData = response.data;
        wallpaperList.value = parsedData
            .map<WallpaperModel>((json) => WallpaperModel.fromJson(json))
            .toList();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> getStreetWallpapers() async {
    try {
      var response = await Dio().get('https://api.unsplash.com/search/photos?page=1&query=street&client_id=$key');
      print(response.data);
      if (response.statusCode == 200) {
        var parsedData = response.data['results'];
        print(parsedData);
        streetWallpapers.value = parsedData
            .map<WallpaperModel>((json) => WallpaperModel.fromJson(json))
            .toList();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> getTravelWallpapers() async {
    try {
      var response = await Dio().get('https://api.unsplash.com/search/photos?page=1&query=travel&client_id=$key');
      print(response.data);
      if (response.statusCode == 200) {
        var parsedData = response.data['results'];
        travelWallpapers.value = parsedData
            .map<WallpaperModel>((json) => WallpaperModel.fromJson(json))
            .toList();
      }
    } catch (e) {
      print(e);
    }
  }

}
