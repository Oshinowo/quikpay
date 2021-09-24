import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    Key? key,
    required this.leadingImage,
    required this.transactionTitle,
    required this.transactionTime,
    required this.transactionAmount,
    required this.amountStatusColour,
  }) : super(key: key);

  final String leadingImage,
      transactionTitle,
      transactionTime,
      transactionAmount;
  final Color amountStatusColour;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(leadingImage),
        width: 50.0.w,
        height: 50.0.h,
        fit: BoxFit.cover,
      ),
      title: Text(
        transactionTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(transactionTime),
      trailing: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14.0.sp,
          ),
          children: [
            const TextSpan(
              text: 'NGN ',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            TextSpan(
              text: transactionAmount,
              style: TextStyle(
                color: amountStatusColour,
              ),
            )
          ],
        ),
      ),
    );
  }
}
