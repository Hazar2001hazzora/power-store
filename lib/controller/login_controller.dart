import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController{
  final GlobalKey<FormState>loginFormKey=GlobalKey<FormState>();
  late TextEditingController emailController,passwordController;
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }
  String? validateEmail(String value){
    if(!GetUtils.isEmail(value)) {
      return "Please enter your EmailAdres";
    }
    return null;
  }

  String? validatePassword(String value){
    if(value.isEmpty) {
      return "Please enter your Password";
    }

    return null;
  }

}