import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/routes.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/utilities/colors.dart';

void main() {
  Get.put(WallpaperController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      initialRoute: '/',
      getPages: Routes.routes,
    );
  }
}
