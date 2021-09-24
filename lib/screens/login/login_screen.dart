import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/dashboard/dashboard_screen.dart';
import 'package:quikpay/screens/sign_up/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  final _signInFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailAddressController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
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
                        icon: const Icon(FontAwesomeIcons.arrowLeft),
                        iconSize: kDefaultIconSize.sp,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding.h / 2),
                    Text(
                      'Sign in',
                      style: kHeadingTextStyle.copyWith(
                          fontSize: 36.0.sp,
                          color: Palette.kCustomColour.shade300),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: kDefaultPadding.h / 2,
                    ),
                    Text(
                      'Login your account to continue',
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
                        key: _signInFormGlobalKey,
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
                              const Spacer(
                                flex: 2,
                              ),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.5,
                                    child: CheckboxListTile(
                                      activeColor: kPrimaryColour,
                                      contentPadding: const EdgeInsets.all(0.0),
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      value: _isChecked,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isChecked = newValue!;
                                        });
                                      },
                                      title: const Text('Remember Me'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                        color: kSecondaryColour,
                                        fontSize: 16.0.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CustomButton(
                                label: 'Sign in',
                                buttonBackgroundColor: kPrimaryColour,
                                pressed: () => Navigator.of(context).pushNamed(
                                  DashboardScreen.id,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Don\'t have an account?  ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16.0.sp,
                                      )),
                                  GestureDetector(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed(
                                      SignUpScreen.id,
                                    ),
                                    child: Text(
                                      'Sign up',
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
