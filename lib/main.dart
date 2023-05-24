import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:power_store1/controller/login_controller.dart';
import 'package:power_store1/midleware/on_boarding_midleware.dart';
import 'package:power_store1/view/OnBoarding/on_boarding_view.dart';
import 'package:power_store1/view/login/login_view.dart';
import 'package:power_store1/view/login/widgets/login_body.dart';
import 'package:power_store1/view/splash/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedprefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   sharedprefs = await SharedPreferences.getInstance();
  runApp(PowerStore());
}

class PowerStore extends StatelessWidget {
  PowerStore({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page:()=> SplashView()),
        GetPage(name: '/login', page:()=> LoginView()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.purple,
        hintColor: Colors.purple, // Set the accent color
      ),
    );
  }
}
