import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/widgets/wallpaper_grid.dart';

class PopularTab extends StatelessWidget {
  PopularTab({Key? key}) : super(key: key);
  WallpaperController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.getAllWallpapers();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: GetX<WallpaperController>(
              builder: (controller) {
                return controller.isPopularLoading.value
                    ? const CircularProgressIndicator()
                    : WallpaperGrid(wallpapers: controller.wallpaperList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
