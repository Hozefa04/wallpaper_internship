import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController controller;

  final List<Tab> myTabs = <Tab>[
    const Tab(text: "Popular",),
    const Tab(text: "Street",),
    const Tab(text: "Travel",),
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