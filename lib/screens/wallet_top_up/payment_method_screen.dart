import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/components/custom_button.dart';
import 'package:quikpay/components/heading_title_description.dart';
import 'package:quikpay/components/heading_title_with_back_icon.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:select_form_field/select_form_field.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);
  static const String id = "select payment method";

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String? selectedPaymentOption;
  final List<Map<String, dynamic>> _paymentOptions = [
    {
      'value': 'paystack',
      'label': ' Paystack',
      'icon': Image.asset(
        'assets/logos/paystack.png',
        fit: BoxFit.cover,
        width: 25.0.w,
        height: 25.0.w,
      ),
    },
    {
      'value': 'flutterwave',
      'label': ' Flutterwave',
      'icon': Image.asset(
        'assets/logos/flutterwave.png',
        fit: BoxFit.cover,
        width: 25.0.w,
        height: 25.0.w,
      ),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeadingTitleWithBackIcon(
                  title: 'Payment Method',
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
                        'You can use different methods to fund your account',
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding.h * 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SelectFormField(
                        type: SelectFormFieldType.dropdown,
                        labelText: 'Select',
                        items: _paymentOptions,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Select payment method',
                          border: const OutlineInputBorder(),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: kDefaultPadding.h,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.caretDown,
                              size: kDefaultIconSize.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (newValue) {
                          setState(
                            () {
                              selectedPaymentOption = newValue;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: kDefaultPadding.h * 3,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0.w,
                            vertical: kDefaultPadding.h + 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  8.0.w,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.wallet,
                                  size: kDefaultIconSize.sp,
                                  color: kPrimaryColour,
                                ),
                              ),
                              SizedBox(
                                width: kDefaultPadding.w / 2,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '₦',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0.sp,
                                        textBaseline: TextBaseline.alphabetic,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20,000.00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding.h,
                      ),
                      CustomButton(
                        label: 'Continue',
                        buttonBackgroundColor: kPrimaryColour,
                        pressed: () {},
                      ),
                    ],
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
