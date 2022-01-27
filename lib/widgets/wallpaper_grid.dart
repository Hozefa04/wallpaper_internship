import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class WallpaperGrid extends StatelessWidget {
  final String url;
  const WallpaperGrid({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          '/wallpaper',
          arguments: [url],
        );
      },
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
