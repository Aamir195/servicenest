import 'package:get/get.dart';
import 'package:service_nest_app/presentation/view/service/service_screen.dart';
import 'package:service_nest_app/presentation/view/signin/sign_in_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const ServiceScreen());
    });
  }
}
