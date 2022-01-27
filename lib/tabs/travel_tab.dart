import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:wallpapers/screens/wallpaper_page.dart';
import 'package:wallpapers/services/wallpaper_api.dart';

class TravelTab extends StatefulWidget {
  const TravelTab({Key? key}) : super(key: key);

  @override
  State<TravelTab> createState() => _TravelTabState();
}

class _TravelTabState extends State<TravelTab> {
  @override
  void initState() {
    Get.put(WallpaperController()).getTravelWallpapers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: GetX<WallpaperController>(builder: (controller) {
              return GridView.builder(
                itemCount: controller.travelWallpapers.length,
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
                        arguments: [
                          controller.travelWallpapers[index].urls['full']
                        ],
                      );
                    },
                    child: Image.network(
                      controller.travelWallpapers[index].urls['small'],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
