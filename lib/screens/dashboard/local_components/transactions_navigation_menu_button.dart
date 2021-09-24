import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionsNavigationMenuButton extends StatelessWidget {
  const TransactionsNavigationMenuButton({
    Key? key,
    required this.label,
    this.labelColour,
    this.buttonBackGroundColour,
    required this.pressed,
  }) : super(key: key);

  final String label;
  final Color? labelColour, buttonBackGroundColour;
  final Function() pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressed,
      child: Text(
        label,
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(
          65.0.w,
          20.0.h,
        ),
        primary: labelColour,
        backgroundColor: buttonBackGroundColour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
      ),
    );
  }
}
