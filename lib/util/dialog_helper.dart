import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/textstyle.dart';

class DialogHelper {
  // Show Loader
  static void showLoader(String title) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 10.0),
              Text(
                title,
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Error Snackbar
  static void showErrorSnackbar(String message) {
    Get.snackbar(
      "Service Nest",
      message,
      titleText: Text(
        "Error:",
        style: AppTextstyle.ts20WM,
      ),
      messageText: Text(
        message,
        style: AppTextstyle.ts14WR,
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: AppColor.red,
      borderRadius: 10.0,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Success Snackbar
  static void showSuccessSnackbar(String message) {
    Get.snackbar(
      "Service Nest",
      message,
      duration: const Duration(seconds: 2),
      backgroundColor: AppColor.orange,
      borderRadius: 10.0,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Warning Snackbar
  static void showWarningSnackbar(String message) {
    Get.snackbar(
      "Service Nest",
      message,
      duration: const Duration(seconds: 2),
      backgroundColor: AppColor.red,
      borderRadius: 10.0,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
