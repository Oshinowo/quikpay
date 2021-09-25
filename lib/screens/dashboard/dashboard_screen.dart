import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikpay/constants/app_constants.dart';
import 'package:quikpay/screens/dashboard/local_components/dashboard_mini_card_with_icon.dart';
import 'package:quikpay/screens/dashboard/local_components/transaction_list_tile.dart';
import 'package:quikpay/screens/dashboard/local_components/transactions_navigation_menu_button.dart';
import 'package:quikpay/screens/verify_account/verify_account_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard screen';
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding.h / 2,
            horizontal: kDefaultPadding.w - 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18.0.sp,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' Hello\n',
                          style: TextStyle(
                            color: kPrimaryColour,
                          ),
                        ),
                        TextSpan(
                          text: ' John Doe',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      size: kDefaultIconSize.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding.h / 2,
              ),
              SizedBox(
                height: size.height * 0.45,
                child: Column(
                  children: [
                    Card(
                      color: kPrimaryColour,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding.w,
                          vertical: kDefaultPadding.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Your balance',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₦90,569.00',
                                  style: TextStyle(
                                    fontSize: 24.0.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidEyeSlash,
                                    size: kDefaultIconSize.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding.h / 4,
                    ),
                    Card(
                      color: const Color(0xffF1E8F1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding.w,
                          vertical: kDefaultPadding.h - 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                textDirection: TextDirection.ltr,
                                children: [
                                  Text(
                                    'Top Up Balance',
                                    style: TextStyle(
                                      fontSize: 16.0.sp,
                                    ),
                                  ),
                                  const Text(
                                      'You can top up using different methods'),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () => Navigator.of(context).pushNamed(
                                VerifyAccount.id,
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.plusCircle,
                                color: kPrimaryColour,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding.h / 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DashboardMiniCardWithIcon(
                          label: 'Bill Payment',
                          icon: 'assets/icons/bill-payment.svg',
                          cardColour: Color(0xffDCD7FF),
                          iconColour: Color(0xff0E0450),
                        ),
                        DashboardMiniCardWithIcon(
                          label: 'Airtime Top-Up',
                          icon: 'assets/icons/smartphone-call.svg',
                          cardColour: Color(0xffE8D9E9),
                          iconColour: Color(0xff462048),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding.h / 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DashboardMiniCardWithIcon(
                          label: 'Data Top-Up',
                          icon: 'assets/icons/wi-fi.svg',
                          cardColour: Color(0xffFDEDD6),
                          iconColour: Color(0xffFFAD37),
                        ),
                        DashboardMiniCardWithIcon(
                          label: 'Waec Pin',
                          icon: 'assets/icons/graduate-cap.svg',
                          cardColour: Color(0xffFCF2E1),
                          iconColour: Color(0xffFFAD37),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: kPrimaryColour,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TransactionsNavigationMenuButton(
                      label: 'All',
                      labelColour: Colors.white,
                      buttonBackGroundColour: kPrimaryColour,
                      pressed: () {},
                    ),
                    TransactionsNavigationMenuButton(
                      label: 'Airtime & Data',
                      labelColour: Colors.grey,
                      pressed: () {},
                    ),
                    TransactionsNavigationMenuButton(
                      label: 'Bill Payment',
                      labelColour: Colors.grey,
                      pressed: () {},
                    ),
                    TransactionsNavigationMenuButton(
                      label: 'Waec Pin',
                      labelColour: Colors.grey,
                      pressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kDefaultPadding.h / 4,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: size.width,
                  height: size.height * 0.25,
                  child: ListView(
                    children: const [
                      TransactionListTile(
                        leadingImage: 'assets/logos/MTN-logo.png',
                        transactionTitle: 'MTN mobile Top-Up',
                        transactionTime: 'Sat 6 June 20 at 05:19',
                        transactionAmount: '-221.19',
                        amountStatusColour: Colors.red,
                      ),
                      TransactionListTile(
                        leadingImage: 'assets/logos/MTN-logo.png',
                        transactionTitle: 'MTN mobile Data',
                        transactionTime: 'Sat 6 June 20 at 05:19',
                        transactionAmount: '+200.00',
                        amountStatusColour: Colors.green,
                      ),
                      TransactionListTile(
                        leadingImage: 'assets/logos/MTN-logo.png',
                        transactionTitle: 'MTN mobile Money',
                        transactionTime: 'Sat 6 June 20 at 05:19',
                        transactionAmount: '-101.19',
                        amountStatusColour: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
