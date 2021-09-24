import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quikpay/constants/app_constants.dart';

class DashboardMiniCardWithIcon extends StatelessWidget {
  const DashboardMiniCardWithIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.cardColour,
    required this.iconColour,
  }) : super(key: key);

  final String label;
  final String icon;
  final Color cardColour, iconColour;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColour,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding.w + 10,
          vertical: kDefaultPadding.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100.0.w,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16.0.sp,
                ),
              ),
            ),
            SvgPicture.asset(
              icon,
              width: kDefaultIconSize.w,
              height: kDefaultIconSize.h,
              color: iconColour,
            ),
          ],
        ),
      ),
    );
  }
}
