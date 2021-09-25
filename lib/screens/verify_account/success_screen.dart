import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';

class AccountVerificationSuccessScreen extends StatelessWidget {
  const AccountVerificationSuccessScreen({Key? key}) : super(key: key);
  static const String id = 'success screen';

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.kCustomColour.shade400,
      body: Padding(
        padding: EdgeInsets.all(
          kDefaultPadding.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: 120.w,
                    height: 220.h,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                        0.4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 150.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                        0.35,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    kDefaultPadding.w,
                  ),
                  width: 100.w,
                  height: 200.h,
                  child: SvgPicture.asset(
                    'assets/icons/check.svg',
                    width: kDefaultPadding.w,
                    height: kDefaultPadding.h,
                    color: Colors.lightGreen,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding.h,
            ),
            Text(
              'Success!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: kDefaultPadding.h * 2,
            ),
            Text(
              'Your account is now verified',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: kDefaultPadding.h * 4,
            ),
            CustomButton(
              label: 'Continue',
              buttonBackgroundColor: kSecondaryColour,
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
