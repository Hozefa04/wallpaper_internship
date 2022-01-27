import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:wallpapers/models/wallpaper_model.dart';
import 'package:wallpapers/services/wallpaper_api.dart';

class WallpaperGrid extends StatelessWidget {
  final List<WallpaperModel> wallpapers;
  const WallpaperGrid({Key? key, required this.wallpapers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: wallpapers.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.toNamed(
              '/wallpaper',
              arguments: [wallpapers[index].urls['full']],
            );
          },
          child: Image.network(
            wallpapers[index].urls['small'],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
