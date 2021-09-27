import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_stack_with_bottom_pattern_image.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/auth/login/login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String id = 'forgot password';

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _forgotPasswordFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
                    'Forgot Password',
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
                    'Enter your registered email address',
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
                      key: _forgotPasswordFormGlobalKey,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              asTerikText: false,
                              controller: _emailController,
                              placeholder: 'Email Address',
                              keyboardInputType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              validate: (String? value) {},
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            CustomButton(
                              label: 'Send OTP Code',
                              buttonBackgroundColor: kPrimaryColour,
                              pressed: () {
                                // _showSuccessBottomSheet(context);
                              },
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already have an account?  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16.0.sp,
                                    )),
                                GestureDetector(
                                  onTap: () => Navigator.of(context).pushNamed(
                                    LoginScreen.id,
                                  ),
                                  child: Text(
                                    'Sign in',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: kSecondaryColour,
                                      fontSize: 16.0.sp,
                                    ),
                                  ),
                                ),
                              ],
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

