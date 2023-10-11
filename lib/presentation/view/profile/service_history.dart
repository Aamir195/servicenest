import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';

class ServiceHistory extends StatelessWidget {
  const ServiceHistory({super.key});

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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Service's History",
                              style: AppTextstyle.ts48WM.copyWith(
                                color: AppColor.black,
                                fontSize: 32.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey,

                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4.0, 6.0), //(x,y)
                          blurRadius: 3.0,
                        ),
                      ], // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wiring',
                              style: AppTextstyle.ts16BM.copyWith(
                                color: AppColor.black,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status: Pending ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Requested Date: 05/05/2023 ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
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
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wiring',
                              style: AppTextstyle.ts16BM.copyWith(
                                color: AppColor.black,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status: Pending ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Requested Date: 05/05/2023 ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
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
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    // color: AppColor.orange,
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wiring',
                              style: AppTextstyle.ts16BM.copyWith(
                                color: AppColor.black,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status: Pending ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Requested Date: 05/05/2023 ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
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
