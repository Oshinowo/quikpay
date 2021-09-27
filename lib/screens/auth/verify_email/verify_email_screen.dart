import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_stack_with_bottom_pattern_image.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/auth/login/login_screen.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);
  static const String id = "email verification";

  @override
  _VerifyEmailScreenState createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _verifyEmailFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _verificationNumberController =
      TextEditingController();

  void _showSuccessBottomSheet(BuildContext context) {
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
                        'Your email has been verified',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0.sp,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Your email is your wallet ID',
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
                label: 'Sign in',
                buttonBackgroundColor: kPrimaryColour,
                pressed: () => Navigator.of(context).pushReplacementNamed(
                  LoginScreen.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _verificationNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            child: CustomStackWithBottomPatternDesign(
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                      ),
                      iconSize: kDefaultIconSize.sp,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding.h / 2),
                  Text(
                    'Verify Email',
                    style: kHeadingTextStyle.copyWith(
                      fontSize: 36.0.sp,
                      color: Palette.kCustomColour.shade300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: kDefaultPadding.h / 2,
                  ),
                  Text(
                    'Check your email for verification code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColour.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding.h * 3,
                  ),
                  SizedBox(
                    height: size.height * 0.4,
                    child: Form(
                      key: _verifyEmailFormGlobalKey,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              asTerikText: false,
                              controller: _verificationNumberController,
                              placeholder: 'Enter code here',
                              keyboardInputType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              validate: (String? value) {},
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            CustomButton(
                              label: 'Verify Now',
                              buttonBackgroundColor: kPrimaryColour,
                              pressed: () {
                                _showSuccessBottomSheet(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
