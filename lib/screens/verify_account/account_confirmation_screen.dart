import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quikpay/components/custom_button.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: kDefaultPadding.h * 2,
                    ),
                    const HeadingTitleDescription(
                      description: 'Confirm if this is you',
                    ),
                    SizedBox(
                      height: kDefaultPadding.h,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/business-woman.png',
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: kDefaultPadding.h + 5,
                    ),
                    Table(
                      border: TableBorder.all(
                        width: 1.0,
                      ),
                      children: [
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Full Name',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Cristiano Ronaldo',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Date of Birth',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0.w),
                              child: const Text(
                                '25-10-1990',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Sex',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Male',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'NIN',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                '8787958595959',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                'Phone Number',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                5.0.w,
                              ),
                              child: const Text(
                                '090987464784',
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding.h + 10,
                    ),
                    CustomButton(
                      label: 'This is me',
                      buttonBackgroundColor: kPrimaryColour,
                      pressed: () {},
                    ),
                    SizedBox(
                      height: kDefaultPadding.h,
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'CANCEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
