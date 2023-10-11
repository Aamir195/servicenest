import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedFunction;
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedFunction,
      child: Container(
        width: CommonFunction.getWidth(context) - 40,
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColor.orange,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: AppTextstyle.ts18WR,
          ),
        ),
      ),
    );
  }
}
