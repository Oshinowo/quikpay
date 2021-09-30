import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';

class HeadingTitleWithBackIcon extends StatelessWidget {
  const HeadingTitleWithBackIcon({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: kDefaultIconSize.sp,
            ),
          ),
        ),
        Center(
          widthFactor: 1.8.w,
          child: Text(
            title,
            style: kSecondHeadingTextStyle.copyWith(
              color: Palette.kCustomColour.shade300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
