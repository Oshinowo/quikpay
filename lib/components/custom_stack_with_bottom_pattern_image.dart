import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomStackWithBottomPatternDesign extends StatelessWidget {
  const CustomStackWithBottomPatternDesign({
    Key? key,
    required this.content,
  }) : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: content,
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
    );
  }
}
