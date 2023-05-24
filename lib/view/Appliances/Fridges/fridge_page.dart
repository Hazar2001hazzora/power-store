import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/gallery_sections_view.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
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
                  Title: 'براد الحافظ',
                  Discription: 'تبريد هوائي',
                ),
                SizedBox(width: 5,),
                ViewList(
                  image: 'assets/images/fridge3.png',
                  Title: 'Star Away برادات',
                  Discription: 'تبريد مائي',
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                ViewList(
                  image: 'assets/images/fridge4.png',
                  Title: 'Fridge',
                  Discription: 'Hellooooo',
                ),
                SizedBox(width: 5,),
                ViewList(
                  image: 'assets/images/fridge2.png',
                  Title: 'Heloo',
                  Discription: 'Hellooooo',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}
