import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:service_nest_app/presentation/view/bottom_navigation/bottom_navigation_screen.dart';
import 'package:service_nest_app/util/dialog_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getArguments();
  }

  void getArguments() {
    var arguments = Get.arguments;
    phoneController.text = arguments[0]["phone"];
  }

  bool validate() {
    if (nameController.value.text == "") {
      DialogHelper.showErrorSnackbar("Name is required");
      return false;
    }
    if (emailController.value.text == "") {
      DialogHelper.showErrorSnackbar("Email is required");
      return false;
    }
    return true;
  }

  Future registerScreen() async {
    if (!validate()) {
      return;
    }
    DialogHelper.showLoader("Creating User");
    var collection = FirebaseFirestore.instance.collection("users");
    await collection.doc(phoneController.value.text).update(
      {
        "name": nameController.value.text,
        "email": emailController.value.text,
      },
    );
    Get.back();
    Get.offAll(() => const BottomNavigationScreen());
  }
}
