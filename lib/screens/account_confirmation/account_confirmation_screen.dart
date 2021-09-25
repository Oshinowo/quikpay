import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quikpay/components/heading_title_description.dart';
import 'package:quikpay/components/heading_title_with_back_icon.dart';
import 'package:quikpay/constants/app_constants.dart';

class AccountConfirmationScreen extends StatelessWidget {
  const AccountConfirmationScreen({Key? key}) : super(key: key);

  static const String id = " account confirmation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding.h,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeadingTitleWithBackIcon(
                title: 'Confirmation',
              ),
              SizedBox(
                height: kDefaultPadding.h * 3,
              ),
              const Center(
                child: HeadingTitleDescription(
                  description: 'Confirm if this is you',
                ),
              ),
              SizedBox(
                height: kDefaultPadding.h,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/business-woman.png',
                ),
                radius: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
