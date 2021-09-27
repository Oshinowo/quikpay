import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/constants/app_constants.dart';

// Success Modal Bottom Sheet
void showSuccessBottomSheet(
  BuildContext context, {
  required String firstLineDescription,
  required String secondLineDescription,
  required String buttonLabel,
  required Function() pressed,
}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (BuildContext context) => SizedBox(
      height: 500.0.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: 90.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(
                        0.3,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    kDefaultPadding.w,
                  ),
                  width: 60.w,
                  height: 120.h,
                  child: SvgPicture.asset(
                    'assets/icons/check.svg',
                    width: kDefaultPadding.w,
                    height: kDefaultPadding.h,
                    color: Colors.white,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Text(
              'Success!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w700,
                color: Colors.lightGreen,
              ),
            ),
            Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(
                horizontal: kDefaultPadding.w,
                vertical: kDefaultPadding.h,
              ),
              color: const Color(0xffFAFAFF),
              child: Padding(
                padding: EdgeInsets.all(
                  kDefaultPadding.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      firstLineDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      secondLineDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              label: buttonLabel,
              buttonBackgroundColor: kPrimaryColour,
              pressed: pressed,
            ),
          ],
        ),
      ),
    ),
  );
}
