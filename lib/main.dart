import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:power_store1/view/Admin/admin_profile.dart';
import 'package:power_store1/view/HomePage/Bottom%20Nav%20Bar/bottom_navigation_bar.dart';
import 'package:power_store1/view/Register/register.dart';
import 'package:power_store1/view/Seller/Navigation%20Bar/bottom_nav_seller.dart';
import 'package:power_store1/view/splash/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Endpoints {
  static const baseUrl = 'http://192.168.123.17:8000';
  static const register = '$baseUrl/api/signup';
  static const login = '$baseUrl/api/login';
  static const logout = '$baseUrl/api/logout';
}


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
      home: bottomNavigationBarSellerScreen(),
      //home: SplashView(),
      //home: Register(),
      //home: AdminProfile(),
      theme: ThemeData(
        primarySwatch: Colors.purple, // Set the accent color
      ),
    );
  }
}
