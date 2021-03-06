import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quikpay/screens/auth/forgot_password/forgot_password_screen.dart';
import 'package:quikpay/screens/auth/login/login_screen.dart';
import 'package:quikpay/screens/auth/otp/otp_screen.dart';
import 'package:quikpay/screens/auth/set_password/set_password_screen.dart';
import 'package:quikpay/screens/auth/sign_up/signup_screen.dart';
import 'package:quikpay/screens/auth/verify_email/verify_email_screen.dart';
import 'package:quikpay/screens/verify_account/account_confirmation_screen.dart';
import 'package:quikpay/screens/dashboard/dashboard_screen.dart';
import 'package:quikpay/screens/onboarding/onboarding_screen.dart';
import 'package:quikpay/screens/verify_account/success_screen.dart';
import 'package:quikpay/screens/verify_account/verify_account_screen.dart';
import 'package:quikpay/screens/wallet_top_up/add_payment_screen.dart';
import 'package:quikpay/screens/wallet_top_up/payment_method_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quikpay/config/palette.dart';
import 'package:quikpay/screens/home/home_screen.dart';

int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(
    const Quikpay(),
  );
}

class Quikpay extends StatelessWidget {
  const Quikpay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414.0, 896.0),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QuikPay',
        theme: ThemeData(
          primarySwatch: Palette.kCustomColour,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: const Color(0XFFFFFFFF),
          textTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme)
              .copyWith(
            bodyText2: TextStyle(
              fontSize: 14.0.sp,
            ),
          ),
        ),
        initialRoute: initScreen == 0 || initScreen == null
            ? OnboardingScreen.id
            : HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          SignUpScreen.id: (context) => const SignUpScreen(),
          VerifyEmailScreen.id: (context) => const VerifyEmailScreen(),
          ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
          OtpScreen.id: (context) => const OtpScreen(),
          SetPasswordScreen.id: (context)=> const SetPasswordScreen(),
          OnboardingScreen.id: (context) => const OnboardingScreen(),
          DashboardScreen.id: (context) => const DashboardScreen(),
          VerifyAccount.id: (context) => const VerifyAccount(),
          AccountConfirmationScreen.id: (context) =>
              const AccountConfirmationScreen(),
          AccountVerificationSuccessScreen.id: (context) =>
              const AccountVerificationSuccessScreen(),
          AddPaymentAmountScreen.id: (context) =>
              const AddPaymentAmountScreen(),
          PaymentMethodScreen.id: (context) => const PaymentMethodScreen(),
        },
      ),
    );
  }
}
