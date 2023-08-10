import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../constants/Colors and Fonts/colors.dart';



class CustomIndicator extends StatelessWidget {
  const CustomIndicator({required this.dotIndex}) ;

  final int? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: PurpleColor,
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
