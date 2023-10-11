import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';

class SucessfullyScreen extends StatelessWidget {
  const SucessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SizedBox(
          width: CommonFunction.getWidth(context), // Fixed width
          height: CommonFunction.getActualHeight(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Image.asset(
                  'assets/icons/services_icons/small_icons/check.png',
                  // height: 200,
                  // width: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Service Requested Succesfully',
                  style: AppTextstyle.ts16BM.copyWith(
                    color: AppColor.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFC630),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 6.0,
                          right: 10.0,
                          bottom: 6.0,
                          left: 10.0,
                        ),
                        child: Text(
                          "Checkout Other services",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                    // Image.asset(
                    //   'assets/images/tempbutton.png',
                    //   width: 150, // Replace with your desired width
                    // ),
                    ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.asset(
                        'assets/images/success_feather_inner.png',
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        'assets/images/success_feather_outer.png', // Replace with your second image path
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
