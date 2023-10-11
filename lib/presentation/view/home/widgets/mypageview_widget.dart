import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/controller/home_controller/page_controller.dart';
import 'package:service_nest_app/presentation/view/home/widgets/customer_review.dart';

class MyPageViewWithCustomIndicator extends StatelessWidget {
  final MyPageController pageController = Get.put(MyPageController());

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              // Add your pages here
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
            onPageChanged: (page) {
              pageController.setPage(page);
            },
          ),
        ),
        Obx(
              () {
            return CustomPageIndicator(
              currentPage: pageController.currentPage.value,
              itemCount: 3, // Set the total number of pages
            );
          },
        ),
      ],
    );
  }
}
