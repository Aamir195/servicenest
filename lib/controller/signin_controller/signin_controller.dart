import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/presentation/view/bottom_navigation/bottom_navigation_screen.dart';
import 'package:service_nest_app/presentation/view/signup/signup_screen.dart';
import 'package:service_nest_app/util/dialog_helper.dart';
import 'dart:math';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  String otp = "";

  var isPhoneCompleted = false.obs;

  int getRandomInteger() {
    Random random = Random();
    var digit = random.nextInt(9) + 1;
    int n = digit;
    for (var i = 0; i < 6 - 1; i++) {
      digit = random.nextInt(10);
      n *= 10;
      n += digit;
    }
    return n;
  }

  bool validate() {
    if (phoneController.value.text.length != 10) {
      DialogHelper.showErrorSnackbar("Invalid Phone Number");
      return false;
    }
    return true;
  }

  Future<void> sendOTP() async {
    if (validate()) {
      DialogHelper.showLoader("Sending OTP");
      otp = getRandomInteger().toString();
      print(otp);
      // var response = await http.get(Uri.parse(
      //     "https://www.fast2sms.com/dev/bulkV2?authorization=YmI5Wkx6B1boLwalEdPgOsRDhCpTf0u4y2nGXHQSUZKztNiV78udnQUGKgEWFscBP2hAvHxqMYT95e1S&variables_values=$otp&route=otp&numbers=${phoneController.value.text}"));
      // var jsonResponse = json.decode(response.body);
      // if (jsonResponse["return"]) {
        Get.back();
        isPhoneCompleted.value = true;
      // } else {
      //   Get.back();
      //   DialogHelper.showErrorSnackbar("Cannot Send OTP. Please Retry !!");
      // }
    } else {
      Get.back();
      DialogHelper.showErrorSnackbar("Invalid Phone Number.. Please Check !!");
    }
  }

  Future verifyOTP() async {
    String phoneNumber = phoneController.value.text;
    var collection = FirebaseFirestore.instance.collection("users");
    if (otpController.value.text == otp) {
      var user = await collection.doc(phoneNumber).get();
      if (user.data() != null && user.data()!["name"] != null) {
        // Naviagate to Dahsboard screen
        Get.offAll(() => const BottomNavigationScreen());
        return;
      }
      // Navigate to Register Screen
      Get.to(
        () => const SignupScreen(),
        arguments: [
          {
            "phone": phoneController.value.text,
          }
        ],
      );
    } else {
      DialogHelper.showErrorSnackbar("Invalid OTP");
    }
  }
}
