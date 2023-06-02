import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import 'package:power_store1/constants/SizeConfig/size_config.dart';
import 'package:power_store1/constants/TextFeild/custom_text_field.dart';
import 'package:power_store1/view/login/login_view.dart';

var firstNameController = TextEditingController();
var lastNameController = TextEditingController();
var password = TextEditingController();
var confirmPassword = TextEditingController();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  Text(
                    "Sign Up Now For Free !",
                    style: TextStyle(
                      color: PurpleColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 400,
                    child: CustomTextField(
                        inputType: TextInputType.name,
                        prefix: Icons.person,
                        onChanged: (value) {},
                        controller: firstNameController,
                        validator: (value) {},
                        text: "First name:"),
                  ),
                  Container(
                    width: 400,
                    child: CustomTextField(
                        inputType: TextInputType.name,
                        prefix: Icons.person,
                        onChanged: (value) {},
                        controller: lastNameController,
                        validator: (value) {},
                        text: "Last name:"),
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
                      inputType: TextInputType.visiblePassword,
                      isPassword: showPassword,
                      maxLines: 1,
                      prefix: Icons.lock,
                      onChanged: (value) {},
                      controller: confirmPassword,
                      validator: (value) {},
                      text: "Confirm your password:",
                    ),
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
                      text: "Email Adress:",
                    ),
                  ),
                  SizedBox(height: 30,),
                  CustomGeneralButton(
                    text: "Sign up",
                    onTap: () {
                      Get.to(() => LoginView());
                    },
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
