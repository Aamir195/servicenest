import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/controller/bottom_navigation/bottom_navigation_controller.dart';
import 'widgets/custom_indictor_widget.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    return Scaffold(
      body: Obx(
        () => controller.pageList[controller.selectedIndex.value],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Container(
          height: 55.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Obx(
              () => TabBar(
                controller: controller.tabController,
                indicator: TopIndicator(),
                onTap: (index) {
                  controller.handleBottomNavigation(index);
                },
                tabs: [
                  Tab(
                    child: Image(
                      image: AssetImage((controller.selectedIndex.value == 0)
                          ? "assets/icons/bottom_sheet/home_selected.png"
                          : "assets/icons/bottom_sheet/home_unselected.png"),
                      width: 25.0,
                      height: 25.0,
                    ),
                  ),
                  Tab(
                    child: Image(
                      image: AssetImage((controller.selectedIndex.value == 1)
                          ? "assets/icons/bottom_sheet/service_selected.png"
                          : "assets/icons/bottom_sheet/service_unselected.png"),
                      width: 25.0,
                      height: 25.0,
                    ),
                  ),
                  Tab(
                    child: Image(
                      image: AssetImage((controller.selectedIndex.value == 2)
                          ? "assets/icons/bottom_sheet/profile_selected.png"
                          : "assets/icons/bottom_sheet/profile_unselected.png"),
                      width: 25.0,
                      height: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
