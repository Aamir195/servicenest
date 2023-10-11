import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool readOnly;
  const CustomTextfield(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.controller, this.readOnly = false});

  @override
  Widget build(BuildContext context) {
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
        const SizedBox(height: 4),
        TextField(
          controller: controller,
          style: const TextStyle(
            color: Color(0xFFEE8700),
          ),
          readOnly: readOnly,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFEE8700),
              ),
            ),
            hintText: hintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFEE8700),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
