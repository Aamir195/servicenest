import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/presentation/view/splash/splash_screen.dart';
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  runApp(MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Service Nest",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
