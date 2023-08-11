import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/constants/TextFeild/custom_text_field.dart';
import 'package:power_store1/constants/TextFeild/edit_profile.dart';
import 'package:http/http.dart' as http;
import 'package:power_store1/main.dart';

import '../login/login_view.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  bool moveToPage = false;
  bool showPassword = true;
  bool password = true;
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneNumController = TextEditingController();
  var emailController = TextEditingController();
  var locationController = TextEditingController();
  Future<void>register(var email,var name,var password,var phoneNum,var location)async {
    showDialog(context: context, builder: (context) {
      return const Center(child: CircularProgressIndicator());
    });
    try {
      var response = await http.post(
          Uri.parse(Endpoints.register),
          body: {
            'name': name,
            'email': email,
            'password': password,
            'address': location,
            'phone': phoneNum,
          }
      );
      if (response.statusCode == 200) {
        print('Done');
        var token = response.body;
        moveToPage = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Register succeeded")),
        );
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Register failed")),
        );
        print("hiiiii");
        print(response.statusCode.toString());
      }
    }
    catch (e) {
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
        key:formkey ,
        child: SafeArea(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80,),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Text("Sign up now for free",style: TextStyle(color: Color(0xFF821b5e),fontSize: 35),),
                    ),
                    Container(width: 350,
                      child: CustomTextField(inputType: TextInputType.emailAddress,
                          prefix: Icons.email,
                          onChanged: (value){}, controller:emailController , validator: (value){
                            if(value.isEmpty){
                              return"Please enter your E-mail";
                            }
                            return null;
                          }, hText: "Email Adress"),

                    ),
                    Container(width: 350,
                      child: CustomTextField(inputType: TextInputType.name,
                          prefix: Icons.person,
                          onChanged: (value){}, controller:nameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          }, hText: "Enter your name"),
                    ),
                    Container(width: 350,
                      child: CustomTextField(inputType: TextInputType.visiblePassword,isPassword: password,maxLines: 1,
                        prefix: Icons.lock,
                        onChanged: (value){},
                        controller:passwordController,
                        validator: (value){
                          if(value.isEmpty){
                            return "please choose your Password ";
                          }
                          return null;

                        },
                        hText: "Choose your Password",lText: "Password",
                        suffix: password
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        pss: () {
                          setState(() {
                            password = !password;
                          });
                        },),

                    ),
                    Container(width: 350,
                      child: CustomTextField(inputType: TextInputType.phone,
                        prefix: Icons.phone,
                        onChanged: (value){}, controller:phoneNumController, validator: (value)
                        {
                          if(value.isEmpty){
                            return "please enter your phone number ";
                          }
                          return null;

                        }, hText: "Enter your phone number",lText: "phone number",),

                    ),
                    Container(width: 350,
                      child: CustomTextField(inputType: TextInputType.name,
                        prefix: Icons.location_on_outlined,
                        onChanged: (value){}, controller:locationController ,
                        validator: (value){
                          if(value.isEmpty){
                            return "Please Select your location";
                          }
                          return null;
                        },
                        hText: "Select your location",lText: "Location",),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: CustomGeneralButton(text: "Sign up",
                        onTap: () async {
                          if (formkey.currentState!.validate()) {
                            await register(emailController.text,
                                nameController.text,
                                passwordController.text,
                                phoneNumController.text,
                                locationController.text);
                            print(emailController.text);
                            print(nameController.text);
                            print(passwordController.text);
                            print(phoneNumController.text);
                            print(locationController.text);

                          }
                          if(moveToPage){
                            Get.to(()=>LoginView());
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
