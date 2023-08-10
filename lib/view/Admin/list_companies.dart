import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

Widget ListCompanies({required text}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Stack(
      children: [
        Center(
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: PurpleColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          left: 100,
          top: 10,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 90,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_forever_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
