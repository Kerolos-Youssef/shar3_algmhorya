import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double hintTextSize;
  final double inputTextSize;
  final TextInputType? keyboardType;
  final bool password;
  final String? Function(String?)? validation;
  CustomInputField({
    required this.controller,
    required this.hintText,
    this.inputTextSize = 20,
    this.hintTextSize = 18,
    this.validation,
    this.keyboardType = TextInputType.text,
    this.password = false,
  });
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: controller,
        validator: validation,
        keyboardType: keyboardType,
        obscureText: password,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: inputTextSize,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: hintTextSize,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
