import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';
import 'package:service_nest_app/presentation/view/service/service_request/succesfull_screen.dart';

class ServiceRequest extends StatelessWidget {
  const ServiceRequest({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SizedBox(
          width: CommonFunction.getWidth(context), // Fixed width
          height: CommonFunction.getActualHeight(context), // Fixed height
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 12, // Fixed height
                ),
                Text(
                  "Create a Request",
                  style: AppTextstyle.ts20BB.copyWith(
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10, // Fixed height
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selected Service",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5, // Fixed height
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {
                              // Handle radio button selection
                            },
                            activeColor: AppColor.orange,
                          ),
                          Text(
                            "Wiring",
                            style: AppTextstyle.ts18BR.copyWith(
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Date & Time",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double
                            .infinity, // Width to fill the container horizontally
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.grey, // Border color
                            width: 0.5, // Border width
                          ),
                          color:
                              Colors.white, // Background color of the rectangle
                          borderRadius:
                              BorderRadius.circular(2.0), // Border radius
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/calendar.png',
                                ),
                                const SizedBox(
                                  width: 10,
                                ), // Spacing between icon and text field
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      DatePickerDialog(
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime(2023),
                                      );
                                    },
                                    child: TextFormField(
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        hintText: "Date for requested service",
                                        hintStyle: AppTextstyle.ts18BR.copyWith(
                                          color: AppColor.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: AppColor.grey,
                              thickness: 1.0,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/clock.png',
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "From",
                                      hintStyle: AppTextstyle.ts18BR.copyWith(
                                        color: AppColor.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: AppColor.black,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/clock.png',
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "To",
                                      hintStyle: AppTextstyle.ts18BR.copyWith(
                                        color: AppColor.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: AppColor.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Address",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.grey, // Border color
                            width: 0.5, // Border width
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/pin.png',
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      hintStyle: AppTextstyle.ts18BR.copyWith(
                                        color: AppColor.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: AppColor.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Request Description",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.grey,
                            width: 0.5,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom:
                                          100.0), // Adjust the top padding as needed
                                  child: Image.asset(
                                    'assets/icons/services_icons/small_icons/edit.png',
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: TextFormField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        hintText:
                                            "Describe your Service request",
                                        hintStyle: AppTextstyle.ts18BR.copyWith(
                                          color: AppColor.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.off(() => const SucessfullyScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEE8700),
                              foregroundColor: Colors.white,
                              textStyle: AppTextstyle.ts26BB.copyWith(
                                color: AppColor.black,
                              ),
                              side: const BorderSide(
                                color: Color(0xFFEE8700),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text("Book Service"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
