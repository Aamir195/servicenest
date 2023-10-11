import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SizedBox(
          width: CommonFunction.getWidth(context), // Fixed width
          height: CommonFunction.getHeightWithoutBottomNavbar(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/profile_icon.png',
                  width: 120,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tony Stark',
                  style: AppTextstyle.ts16BM.copyWith(
                    color: AppColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Mumbai, India',
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ), // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/services_icons/small_icons/avatar.png',
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Profile',
                          style: AppTextstyle.ts16BM.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward, // Replace with your arrow icon
                          color: AppColor.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/services_icons/small_icons/history.png',
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Service History',
                          style: AppTextstyle.ts16BM.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward, // Replace with your arrow icon
                          color: AppColor.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/services_icons/small_icons/exit.png',
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Logout',
                          style: AppTextstyle.ts16BM.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward, // Replace with your arrow icon
                          color: AppColor.black,
                        ),
                      ],
                    ),
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
