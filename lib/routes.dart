import 'package:get/get.dart';
import 'package:wallpapers/screens/home_page.dart';
import 'package:wallpapers/screens/wallpaper_page.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const HomePage()),
    GetPage(name: '/wallpaper', page: () => const WallpaperPage()),
  ];
}
