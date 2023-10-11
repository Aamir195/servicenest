import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/controller/signup_controller/signup_controller.dart';
import 'package:service_nest_app/presentation/widgets/custom_button.dart';
import 'package:service_nest_app/presentation/widgets/custom_textfiled.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
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
                      "Sign Up",
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
                          margin: const EdgeInsets.only(top: 22, left: 70),
                          width: 200,
                          height: 220,
                          child: Image.asset(
                            "assets/icons/signup_icons/singup_top_inner_curve.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 22, left: 35),
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
              const SizedBox(height: 10),
              Transform.translate(
                offset: const Offset(0, -60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextfield(
                        labelText: "Name",
                        hintText: "Enter your name",
                        controller: controller.nameController,
                      ),
                      const SizedBox(height: 10),
                      CustomTextfield(
                        labelText: "Phone",
                        hintText: "Enter your phone number",
                        controller: controller.phoneController,
                        readOnly: true,
                      ),
                      const SizedBox(height: 10),
                      CustomTextfield(
                        labelText: "Email",
                        hintText: "Enter your email",
                        controller: controller.emailController,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "By creating an account you agree to our Terms of Services & Privacy Policies",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        buttonText: "Register User",
                        onPressedFunction: () {
                          controller.registerScreen();
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
