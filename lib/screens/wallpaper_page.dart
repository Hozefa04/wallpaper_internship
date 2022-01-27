import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WallpaperPage extends StatelessWidget {
  const WallpaperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              data[0],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 22.0,
            top: 42.0,
            child: Container(
              height: 44,
              width: 44,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
