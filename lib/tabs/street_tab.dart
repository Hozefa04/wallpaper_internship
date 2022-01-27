import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:wallpapers/services/wallpaper_api.dart';

class StreetTab extends StatefulWidget {
  const StreetTab({Key? key}) : super(key: key);

  @override
  State<StreetTab> createState() => _StreetTabState();
}

class _StreetTabState extends State<StreetTab> {

  @override
  void initState() {
    Get.put(WallpaperController()).getStreetWallpapers();
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
                itemCount: controller.streetWallpapers.length,
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
                          controller.streetWallpapers[index].urls['full']
                        ],
                      );
                    },
                    child: Image.network(
                      controller.streetWallpapers[index].urls['small'],
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
