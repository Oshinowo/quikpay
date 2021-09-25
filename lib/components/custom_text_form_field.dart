import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quikpay/constants/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textInputAction,
    required this.controller,
    required this.asTerikText,
    required this.keyboardInputType,
    required this.validate,
    required this.placeholder,
  }) : super(key: key);

  final TextEditingController controller;
  final bool asTerikText;
  final FormFieldValidator<String> validate;
  final String placeholder;
  final TextInputType keyboardInputType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      obscureText: asTerikText,
      validator: validate,
      keyboardType: keyboardInputType,
      decoration: kTextFieldDecoration.copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 14.0.sp,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding.w,
        ),
      ),
    );
  }
}
