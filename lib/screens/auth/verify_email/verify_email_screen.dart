import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/dashboard/dashboard_screen.dart';

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
            child: Stack(
              children: [
                Column(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding.w),
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
                                pressed: () => Navigator.of(context).pushNamed(
                                  DashboardScreen.id,
                                ),
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
