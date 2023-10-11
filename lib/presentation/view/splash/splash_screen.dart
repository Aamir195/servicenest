import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/controller/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(SplashController());

    final double topImageHeight = size.height * 0.73;
    final double bottomImageHeight = size.height * 0.68;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: size.width,
                    height: topImageHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splashcurve1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: size.width,
                    height: bottomImageHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splashcurve2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.width * 0.5,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/applogo.png"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: size.width * 0.5,
                        height: size.width * 0.1,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/applogotext.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
