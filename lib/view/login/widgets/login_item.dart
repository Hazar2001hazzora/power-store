import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/controller/login_controller.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/TextFeild/custom_text_field.dart';



class LoginItem extends StatelessWidget {
   LoginItem({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: PurpleColor,
            height: 1.5625,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),

      ],
    );
  }
}
