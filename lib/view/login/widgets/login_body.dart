import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/main.dart';
import 'package:power_store1/view/HomePage/Bottom%20Nav%20Bar/bottom_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Buttons/default_button.dart';
import '../../../constants/ClickableImage/clickable_image.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/TextFeild/custom_text_field.dart';
import '../../../controller/login_controller.dart';
import '../../HomePage/home_page.dart';
import '../../OnBoarding/on_boarding_view.dart';
import 'login_item.dart';

class LoginBody extends StatefulWidget {
  final TextInputType? inputType;
  final int? maxLines;

  LoginBody({Key? key, this.inputType, this.maxLines});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  var emailcont = TextEditingController();
  var passlcont = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool password = true;
  bool moveToPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 450,
                height: 35,
                color: PurpleColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Sign In Your Account',
                    style: TextStyle(
                      color: PurpleColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 50),
              LoginItem(
                text: '     Enter Your Email : ',
              ),
              CustomTextField(
                controller: emailcont,
                maxLines: widget.maxLines,
                inputType: TextInputType.emailAddress,
                prefix: Icons.email,
                onChanged: (Value) {
                  print(Value);
                },
                validator: (Value) {
                  if (Value.isEmpty) {
                    return "please enter your Email Adress";
                  }
                  return null;
                },
                text: 'Email Adress',
              ),
              SizedBox(height: 60),
              LoginItem(
                text: '     Enter Your Password : ',
              ),
              CustomTextField(
                maxLines: 1,
                inputType: TextInputType.visiblePassword,
                isPassword: password,
                prefix: Icons.lock,
                suffix: password
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                pss: () {
                  setState(() {
                    password = !password;
                  });

                  ;
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter your Password";
                  }
                  return null;
                },
                text: 'Password',
                controller: passlcont,
              ),
              SizedBox(height: 50),
              CustomGeneralButton(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      print(emailcont.text);
                      print(passlcont.text);
                      moveToPage = true;
                      sharedprefs.setBool("page_after_splash", true);
                    }
                    // fetchData();
                    if (moveToPage)
                      Get.offAll(
                        () => bottomNavigationBarScreen(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500),
                      );
                    moveToPage = false;
                  },
                  text: 'Sign In'),
              SizedBox(height: 80),
              Text(
                'Complete With Google',
                style: TextStyle(
                  color: PurpleColor,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClickableImage(
                onTap: () {
                  launch('https://www.google.com');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
