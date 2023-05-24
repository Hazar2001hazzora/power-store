import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constants/Colors and Fonts/colors.dart';


AppBar myAppBar({

  required String Title
  })=>AppBar(

    elevation: 10,
    backgroundColor: PurpleColor,
    title: Center(
      child: Text(
        Title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    ],
  );
