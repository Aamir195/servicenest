import 'package:get/get.dart';
import 'package:service_nest_app/presentation/view/bottom_navigation/bottom_navigation_screen.dart';
import 'package:service_nest_app/presentation/view/splash/splash_screen.dart';
import 'package:service_nest_app/util/routes/app_route.dart';

import '../binding/splash_binding.dart';


List<GetPage> routeList = [
  GetPage(
    name: AppRoute.splash,
    page: () => const SplashScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
    binding: SplashBinding(),
  ),

];
