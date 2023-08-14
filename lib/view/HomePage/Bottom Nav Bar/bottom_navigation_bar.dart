import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../controller/bottom_nav_bar.dart';
import '../../../main.dart';

class bottomNavigationBarScreen extends StatefulWidget {
  const bottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBarScreen> createState() => _bottomNavigationBarScreenState();
}

class _bottomNavigationBarScreenState extends State<bottomNavigationBarScreen> {

  Future<void> fetchProfileData() async {
    final url = Uri.parse(Endpoints.profile);
    final token = sharedprefs.getString('token');
    Map<String, dynamic> _profileData = {};
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      _profileData = json.decode(response.body);
      print(_profileData);
      setState(() {
        sharedprefs.setString('name', _profileData['data']['name']);
        sharedprefs.setString('phone', _profileData['data']['phone']);
        sharedprefs.setString('email', _profileData['data']['email']);
        sharedprefs.setString('image', _profileData['data']['image']);
        sharedprefs.setString('address', _profileData['data']['address']);
      });

      print(sharedprefs.getString('name'));
      print(sharedprefs.getString('phone'));
      print(sharedprefs.getString('email'));
      print(sharedprefs.getString('image'));
      print(sharedprefs.getString('address'));

    } else {
      throw Exception('Failed to fetch profile data');
    }

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProfileData();
  }
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: bottomnavbarController(),
      builder: (bottomnavbarController controller) => Scaffold(
        body: controller.pages[controller.index.value],
        bottomNavigationBar: GNav(
          onTabChange: (val) => controller.pageIndex(val),
          color: Colors.white,
          backgroundColor: PurpleColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          iconSize: 25,
          activeColor: PurpleColor,
          tabBackgroundColor: Color(0xFFE3C5D4),
          tabBorderRadius: 30,
          tabMargin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_outline,
              text: "Favourtie",
            ),
            GButton(
              icon: Icons.category_outlined,
              text: 'Categorys',
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              text: 'Profile',
            ),
            GButton(
              icon: Icons.shopping_cart_checkout_rounded,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
