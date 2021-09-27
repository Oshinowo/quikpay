import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/auth/login/login_screen.dart';
import 'package:quikpay/screens/auth/verify_email/verify_email_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'registration screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailAddressController.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                        iconSize: kDefaultIconSize.sp,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding.h / 2),
                    Text(
                      'Getting Started',
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
                      'Create an account to continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColour.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding.h * 2,
                    ),
                    SizedBox(
                      height: size.height * 0.4,
                      child: Form(
                        key: _signUpFormGlobalKey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CustomTextField(
                                asTerikText: false,
                                controller: _emailAddressController,
                                placeholder: 'Email Address',
                                keyboardInputType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                validate: (String? value) {},
                              ),
                              const Spacer(),
                              CustomTextField(
                                textInputAction: TextInputAction.next,
                                controller: _fullNameController,
                                asTerikText: false,
                                keyboardInputType: TextInputType.name,
                                validate: (value) {},
                                placeholder: 'Full Name',
                              ),
                              const Spacer(),
                              CustomTextField(
                                asTerikText: true,
                                controller: _passwordController,
                                placeholder: 'Password',
                                keyboardInputType:
                                    TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                validate: (String? value) {},
                              ),
                              const Spacer(),
                              CustomButton(
                                label: 'Sign up',
                                buttonBackgroundColor: kPrimaryColour,
                                pressed: () => Navigator.of(context).pushNamed(
                                  VerifyEmailScreen.id,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account?  ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16.0.sp,
                                      )),
                                  GestureDetector(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed(
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
                Positioned(
                  bottom: -10.0,
                  left: 0.0,
                  right: 0.0,
                  child: SvgPicture.asset(
                    'assets/images/partern.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
