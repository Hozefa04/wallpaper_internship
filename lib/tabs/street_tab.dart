import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/widgets/wallpaper_grid.dart';

class StreetTab extends StatelessWidget {
  const StreetTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WallpaperController()).getStreetWallpapers();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: GetX<WallpaperController>(
              builder: (controller) {
                return GridView.builder(
                  itemCount: controller.streetWallpapers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return WallpaperGrid(
                      url: controller.streetWallpapers[index].urls['small'],
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
