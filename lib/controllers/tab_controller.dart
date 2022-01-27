import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpapers/utilities/strings.dart';

class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController controller;

  final List<Tab> myTabs = <Tab>[
    Tab(text: AppStrings.popularTab,),
    Tab(text: AppStrings.streetTab,),
    Tab(text: AppStrings.travelTab,),
  ];

  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();
    controller.dispose();
  }

}