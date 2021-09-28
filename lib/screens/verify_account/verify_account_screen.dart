import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/components/heading_title_description.dart';
import 'package:quikpay/components/heading_title_with_back_icon.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/verify_account/account_confirmation_screen.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  static const String id = 'verify account';

  @override
  _VerifyAccountState createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  final _verifyAccountGlobalKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _verificationNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HeadingTitleWithBackIcon(
                    title: '\tVerify Account',
                  ),
                  SizedBox(
                    height: kDefaultPadding.h * 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding.w * 2,
                    ),
                    child: const HeadingTitleDescription(
                      description:
                          'We want to ensure you are a verified user on the app for future updates regarding app features',
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding.h * 3,
                  ),
                  Form(
                    key: _verifyAccountGlobalKey,
                    child: Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextField(
                            textInputAction: TextInputAction.next,
                            controller: _firstNameController,
                            asTerikText: false,
                            keyboardInputType: TextInputType.name,
                            validate: (value) {},
                            placeholder: 'First Name',
                          ),
                          SizedBox(
                            height: kDefaultPadding.h,
                          ),
                          CustomTextField(
                            textInputAction: TextInputAction.next,
                            controller: _lastNameController,
                            asTerikText: false,
                            keyboardInputType: TextInputType.name,
                            validate: (value) {},
                            placeholder: 'Last Name',
                          ),
                          SizedBox(
                            height: kDefaultPadding.h,
                          ),
                          CustomTextField(
                            textInputAction: TextInputAction.next,
                            controller: _verificationNumberController,
                            asTerikText: false,
                            keyboardInputType: TextInputType.number,
                            validate: (value) {},
                            placeholder: 'National Verification Number',
                          ),
                          SizedBox(
                            height: kDefaultPadding.h,
                          ),
                          CustomButton(
                            label: 'Click to Verify',
                            buttonBackgroundColor: kPrimaryColour,
                            pressed: () => Navigator.of(context).pushNamed(
                              AccountConfirmationScreen.id,
                            ),
                          ),
                        ],
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
