import 'package:flutter/material.dart';
import '../../../common/common_function.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                          margin: const EdgeInsets.only(top: 28, left: 70),
                          width: 200,
                          height: 220,
                          child: Image.asset(
                            "assets/icons/signup_icons/singup_top_inner_curve.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 28, left: 35),
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
              const SizedBox(
                height: 10,
              ),
              Transform.translate(
                offset: Offset(0, -60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTextField(
                        "Name",
                        "Enter your name",
                        nameFocusNode,
                        nameController,
                      ),
                      const SizedBox(height: 10),
                      buildTextField(
                        "Phone",
                        "Enter your phone number",
                        phoneFocusNode,
                        phoneController,
                      ),
                      const SizedBox(height: 10),
                      buildTextField(
                        "Email",
                        "Enter your email",
                        emailFocusNode,
                        emailController,
                      ),
                      const SizedBox(height: 10),
                      buildTextField(
                        "Password",
                        "Enter your password",
                        passwordFocusNode,
                        passwordController,
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
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement your action here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFEE8700),
                            onPrimary: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                            side: BorderSide(
                              color: isTextFieldEmpty()
                                  ? Colors.transparent
                                  : const Color(0xFFEE8700),
                            ),
                          ),
                          child: const Text("Create an Account"),
                        ),
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

  bool isTextFieldEmpty() {
    return nameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty;
  }

  Widget buildTextField(
    String labelText,
    String hintText,
    FocusNode focusNode,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        TextField(
          focusNode: focusNode,
          controller: controller,
          style: const TextStyle(
            color: Color(0xFFEE8700),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFEE8700),
              ),
            ),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color:
                    isTextFieldEmpty() ? Colors.grey : const Color(0xFFEE8700),
              ),
            ),
            // errorBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.grey,
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
