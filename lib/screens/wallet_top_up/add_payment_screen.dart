import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/custom_text_form_field.dart';
import 'package:quikpay/components/heading_title_description.dart';
import 'package:quikpay/components/heading_title_with_back_icon.dart';
import 'package:quikpay/constants/app_constants.dart';

class AddPaymentAmountScreen extends StatefulWidget {
  const AddPaymentAmountScreen({Key? key}) : super(key: key);
  static const String id = "add money";

  @override
  State<AddPaymentAmountScreen> createState() => _AddPaymentAmountScreenState();
}

class _AddPaymentAmountScreenState extends State<AddPaymentAmountScreen> {
  final _addAmountFormGlobalKey = GlobalKey<FormState>();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeadingTitleWithBackIcon(
                  title: 'Add Money',
                ),
                SizedBox(
                  height: kDefaultPadding.h * 4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding.w * 2,
                  ),
                  child: const HeadingTitleDescription(
                    description:
                        'Top up your wallet to be able to make payment for any of our services',
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding.h * 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding.w,
                  ),
                  child: Form(
                    key: _addAmountFormGlobalKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          textInputAction: TextInputAction.done,
                          controller: _amountController,
                          asTerikText: false,
                          keyboardInputType: TextInputType.number,
                          validate: (value) {},
                          placeholder: 'Amount',
                        ),
                        SizedBox(
                          height: kDefaultPadding.h * 2,
                        ),
                        CustomButton(
                          label: 'Continue',
                          buttonBackgroundColor: kPrimaryColour,
                          pressed: () {},
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
    );
  }
}
