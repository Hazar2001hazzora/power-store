import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../../controller/bottom_nav_bar.dart';

class bottomNavigationBarScreen extends StatelessWidget {
  const bottomNavigationBarScreen({Key? key}) : super(key: key);

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
