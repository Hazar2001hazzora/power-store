import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

Widget AdminView({required text , required onTap}) {
  return Padding(
    padding: const EdgeInsets.all(18),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 165,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
