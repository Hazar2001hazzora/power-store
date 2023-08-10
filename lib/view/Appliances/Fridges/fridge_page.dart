import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/main.dart';
import 'package:power_store1/view/Gallery%20Sections/gallery_sections_view.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
import '../../show_product.dart';
import '../../widgets/appBar/app_Bar.dart';
import '../view_list.dart';

class FridgePage extends StatelessWidget {
  const FridgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Fridges'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ViewList(
                  image: 'assets/images/fridge1.png',
                  Title: 'Al Hafiz Fridge',
                  Discription: 'Air Cooling',
                  onTap: () {
                    Get.to(() => ShowProduct(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                ViewList(
                  image: 'assets/images/fridge3.png',
                  Title: 'Star Way',
                  Discription: 'Water Cooling',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ViewList(
                  image: 'assets/images/fridge4.png',
                  Title: 'LG Refrigerator',
                  Discription: 'Case drinks',
                  onTap: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                ViewList(
                  image: 'assets/images/fridge2.png',
                  Title: 'Samsung Fridge',
                  Discription: 'Extra Space',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
