import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_stack_with_bottom_pattern_image.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/auth/login/login_screen.dart';
import 'package:quikpay/utils/functions.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);
  static const String id = "set new password";

  @override
  _SetPasswordScreenState createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final _setNewPasswordFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
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
                    'Set Password',
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
                    'Enter a new password for your account',
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
                      key: _setNewPasswordFormGlobalKey,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              asTerikText: false,
                              controller: _newPasswordController,
                              placeholder: 'New Password',
                              keyboardInputType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              validate: (String? value) {},
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            CustomTextField(
                              asTerikText: false,
                              controller: _confirmPasswordController,
                              placeholder: 'Confirm Password',
                              keyboardInputType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              validate: (String? value) {},
                            ),
                            SizedBox(
                              height: kDefaultPadding.h,
                            ),
                            CustomButton(
                              label: 'Save',
                              buttonBackgroundColor: kPrimaryColour,
                              pressed: () => showSuccessBottomSheet(
                                context,
                                firstLineDescription:
                                    'Your password has been reset',
                                secondLineDescription: 'successfully',
                                buttonLabel: 'OK',
                                pressed: () =>
                                    Navigator.of(context).pushReplacementNamed(
                                  LoginScreen.id,
                                ),
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
