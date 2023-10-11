import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';
import 'package:service_nest_app/controller/signin_controller/signin_controller.dart';
import 'package:service_nest_app/presentation/widgets/custom_button.dart';
import 'package:service_nest_app/presentation/widgets/custom_textfiled.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: CommonFunction.getWidth(context),
        height: CommonFunction.getActualHeight(context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 43,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 22, left: 80),
                          width: 200,
                          height: 220,
                          child: Image.asset(
                            "assets/icons/signup_icons/singup_top_inner_curve.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 22, left: 40),
                          width: 200,
                          height: 230,
                          child: Image.asset(
                            "assets/icons/signup_icons/signup_top_outer_curve.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => CustomTextfield(
                        labelText: "Phone",
                        hintText: "Enter your phone number",
                        controller: controller.phoneController,
                        readOnly: controller.isPhoneCompleted.value,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextfield(
                      labelText: "OTP",
                      hintText: "Enter your OTP ",
                      controller: controller.otpController,
                    ),
                    const SizedBox(height: 20),
                    Obx(
                      () => controller.isPhoneCompleted.value
                          ? CustomButton(
                              buttonText: "VERIFY OTP",
                              onPressedFunction: () {
                                controller.verifyOTP();
                              },
                            )
                          : CustomButton(
                              buttonText: "GET OTP",
                              onPressedFunction: () {
                                controller.sendOTP();
                              },
                            ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: InkWell(
                        onTap: () {
                          controller.isPhoneCompleted.value = false;
                          controller.otpController.text = "";
                        },
                        child: Text(
                          "Edit Phone Number ",
                          style: AppTextstyle.ts20BB.copyWith(
                            color: AppColor.orange,
                            decoration: TextDecoration.underline,
                          ),
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
    );
  }
}
