import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/tab_controller.dart';
import 'package:wallpapers/tabs/popular_tab.dart';
import 'package:wallpapers/tabs/street_tab.dart';
import 'package:wallpapers/tabs/travel_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myTabController = Get.put(MyTabController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallpapers"),
        centerTitle: true,
        bottom: TabBar(
          controller: myTabController.controller,
          tabs: myTabController.myTabs,
        ),
      ),
      body: TabBarView(
        controller: myTabController.controller,
        children: const [
          PopularTab(),
          StreetTab(),
          TravelTab(),
        ],
      ),
    );
  }
}
