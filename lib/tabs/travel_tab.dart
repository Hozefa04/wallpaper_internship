import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:wallpapers/services/wallpaper_api.dart';
import 'package:wallpapers/widgets/wallpaper_grid.dart';

class TravelTab extends StatelessWidget {
  WallpaperController controller = Get.find();
  TravelTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getTravelWallpapers();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return controller.isTravelLoading.value
                    ? const CircularProgressIndicator()
                    : WallpaperGrid(wallpapers: controller.travelWallpapers);
              },
            ),
          ),
        ],
      ),
    );
  }
}
