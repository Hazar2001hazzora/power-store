import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:power_store1/main.dart';
import 'package:power_store1/view/login/login_view.dart';
import '../../constants/Buttons/custom_buttons.dart';
import '../../constants/Colors and Fonts/colors.dart';
import '../../constants/TextFeild/custom_text_field.dart';

var firstNameController = TextEditingController();
var lastNameController = TextEditingController();
var password = TextEditingController();
var phoneNum = TextEditingController();
var email = TextEditingController();
var location = TextEditingController();

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showPassword = true;

  Future<void> registerUser() async {
    final url = Uri.parse(Endpoints.register);

    final body = jsonEncode({
      'firstName': firstNameController.text,
      'lastName': lastNameController.text,
      'password': password.text,
      'phoneNum': phoneNum.text,
      'location': location.text,
      'email': email.text,
    });

    var response = await http.post(url, body: body);

    if (response.statusCode == 200) {
      // Registration successful
      print('Registration successful');
      Get.to(() => const LoginView());
    } else {
      // Registration failed
      print('Registration failed');
      print(response.statusCode);
      // Handle the registration failure, e.g., show an error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 130,
              ),
              child: Column(
                children: [
                  const Text(
                    " Sign Up Now For Free !",
                    style: TextStyle(
                      color: PurpleColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: 400,
                    child: CustomTextField(
                        inputType: TextInputType.name,
                        prefix: Icons.person,
                        onChanged: (value) {},
                        controller: firstNameController,
                        validator: (value) {},
                        text: "Name:"),
                  ),
                  Container(
                    width: 400,
                    child: CustomTextField(
                        inputType: TextInputType.visiblePassword,
                        isPassword: showPassword,
                        maxLines: 1,
                        prefix: Icons.lock,
                        onChanged: (value) {},
                        controller: password,
                        validator: (value) {},
                        text: "Choose your Password:"),
                  ),

                  Container(
                    width: 400,
                    child: CustomTextField(
                      inputType: TextInputType.phone,
                      prefix: Icons.phone,
                      onChanged: (value) {},
                      controller: phoneNum,
                      validator: (value) {},
                      text: "Phone number:",
                    ),
                  ),
                  Container(
                    width: 400,
                    child: CustomTextField(
                      inputType: TextInputType.streetAddress,
                      prefix: Icons.location_on_outlined,
                      onChanged: (value) {},
                      controller: location,
                      validator: (value) {},
                      text: "Location:",
                    ),
                  ),
                  Container(
                    width: 400,
                    child: CustomTextField(
                      inputType: TextInputType.emailAddress,
                      prefix: Icons.email,
                      onChanged: (value) {},
                      controller: email,
                      validator: (value) {},
                      text: "Email Address:",
                    ),
                  ),
                  SizedBox(height: 30,),
                  CustomGeneralButton(

                      text: "Sign up",
                      onTap: () {
                        print(firstNameController.text);
                        print(lastNameController.text);
                        print(password.text);
                        print(phoneNum.text);
                        print(location.text);
                        print(email.text);
                        registerUser
                        ;
                      }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
