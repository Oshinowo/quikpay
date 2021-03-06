import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_stack_with_bottom_pattern_image.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/auth/set_password/set_password_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static const String id = 'otp code screen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _otpCodeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _otpCodeController.dispose();
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
                    'OTP Code',
                    style: kHeadingTextStyle.copyWith(
                      fontSize: 36.0.sp,
                      color: Palette.kCustomColour.shade300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: kDefaultPadding.h / 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding.w + 10,
                    ),
                    child: Text(
                      'We sent a code to your email address, kindly enter it here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColour.withOpacity(0.8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding.h * 3,
                  ),
                  SizedBox(
                    height: size.height * 0.4,
                    child: Form(
                      key: _otpFormGlobalKey,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              asTerikText: false,
                              controller: _otpCodeController,
                              placeholder: 'Enter code here',
                              keyboardInputType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              validate: (String? value) {},
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            CustomButton(
                              label: 'Verify',
                              buttonBackgroundColor: kPrimaryColour,
                              pressed: () => Navigator.of(context).pushNamed(
                                SetPasswordScreen.id,
                              ),
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
