import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:power_store1/view/Seller/Navigation%20Bar/bottom_nav_seller.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedprefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   sharedprefs = await SharedPreferences.getInstance();
  runApp(PowerStore());
}
//rrf

class PowerStore extends StatelessWidget {
  PowerStore({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: bottomNavigationBarSellerScreen(),
      theme: ThemeData(
        primarySwatch: Colors.purple, // Set the accent color
      ),
    );
  }
}
