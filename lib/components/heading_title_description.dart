import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingTitleDescription extends StatelessWidget {
  const HeadingTitleDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18.0.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
