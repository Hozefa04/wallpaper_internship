import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/controllers/tab_controller.dart';
import 'package:wallpapers/tabs/popular_tab.dart';
import 'package:wallpapers/tabs/street_tab.dart';
import 'package:wallpapers/tabs/travel_tab.dart';
import 'package:wallpapers/utilities/colors.dart';
import 'package:wallpapers/utilities/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myTabController = Get.put(MyTabController());
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appTitle),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        bottom: TabBar(
          indicatorColor: AppColors.whiteColor,
          controller: myTabController.controller,
          tabs: myTabController.myTabs,
        ),
      ),
      body: TabBarView(
        controller: myTabController.controller,
        children: [
          PopularTab(),
          StreetTab(),
          TravelTab(),
        ],
      ),
    );
  }
}
