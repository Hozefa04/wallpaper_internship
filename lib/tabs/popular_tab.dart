import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/widgets/wallpaper_grid.dart';

class PopularTab extends StatelessWidget {
  const PopularTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WallpaperController()).getAllWallpapers();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: GetX<WallpaperController>(
              builder: (controller) {
                return GridView.builder(
                  itemCount: controller.wallpaperList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return WallpaperGrid(
                      url: controller.wallpaperList[index].urls['small'],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
