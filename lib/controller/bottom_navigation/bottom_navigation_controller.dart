import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/presentation/view/home/home_screen.dart';
import 'package:service_nest_app/presentation/view/profile/profile_screen.dart';
import 'package:service_nest_app/presentation/view/service/service_screen.dart';

class BottomNavigationController extends GetxController with GetTickerProviderStateMixin{

  late TabController tabController;
  List<Widget> pageList =[

    const HomeScreen(),
    const ServiceScreen(),
    const ProfileScreen(),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
      animationDuration: const Duration(seconds: 1),
    );

  }
  var selectedIndex = 1.obs;

  void handleBottomNavigation(int index) {
    selectedIndex.value = index;
  }
}