import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/widgets/wallpaper_grid.dart';

class StreetTab extends StatelessWidget {
  final WallpaperController controller = Get.find();
  StreetTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getStreetWallpapers();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return controller.isStreetLoading.value
                    ? const CircularProgressIndicator()
                    : WallpaperGrid(wallpapers: controller.streetWallpapers);
              },
            ),
          ),
        ],
      ),
    );
  }
}
