import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Buttons/default_button.dart';
import '../../../constants/ClickableImage/clickable_image.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/TextFeild/custom_text_field.dart';
import '../../../main.dart';
import '../../HomePage/Bottom Nav Bar/bottom_navigation_bar.dart';
import '../../HomePage/home_page.dart';
import '../../OnBoarding/on_boarding_view.dart';
import '../../Register/register.dart';
import 'login_item.dart';


class LoginBody extends StatefulWidget {
  final TextInputType? inputType;
  final int? maxLines;

  LoginBody({Key? key, this.inputType, this.maxLines});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  var formkey = GlobalKey<FormState>();
  bool password = true;
  var emailcont = TextEditingController();
  var passlcont = TextEditingController();
  bool moveToPage = false;

  Future<void> login() async {

    showDialog(context: context, builder: (context) {
      return const Center(child: CircularProgressIndicator());
    });
    try {
      var response = await http.post(
        Uri.parse(Endpoints.login),
        body: {
          'email': emailcont.text,
          'password': passlcont.text,
        },
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        // Login successful
        var token = response.body; // Assuming the token is returned in the response body
        setState(() {

          moveToPage = true;
        });
      } else {
        // Login failed
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login failed')),
        );
      }
    } catch (e) {
      // Error occurred during API request
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An error occurred')),
      );
    }

    Navigator.of(context).pop();
  }


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
              const Row(
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
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 50),
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
                    return "please enter your Email Address";
                  }
                  return null;
                },
                hText: 'Email Address',
              ),
              const SizedBox(height: 60),
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
                hText: 'Password',
                controller: passlcont,
              ),
              const SizedBox(height: 50),
              CustomGeneralButton(
                onTap: () async {
                  if (formkey.currentState!.validate()) {
                    await login();
                    print(passlcont.text);
                    print(emailcont.text);
                    sharedprefs.setBool("page_after_splash", true);

                  }
                  if (moveToPage) {
                    Get.offAll(
                          () => bottomNavigationBarScreen(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                    moveToPage = false;
                  }
                },
                text: 'Sign In',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't you have an Account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(const Register());
                      },
                      child: const Text("Register now!!"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              const Text(
                'Complete With Google',
                style: TextStyle(
                  color: PurpleColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
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
