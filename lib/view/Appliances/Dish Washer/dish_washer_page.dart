import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/gallery_sections_view.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
import '../../widgets/appBar/app_Bar.dart';
import '../view_list.dart';

class DishWasherPage extends StatelessWidget {
  const DishWasherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Dish Washer'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ViewList(
                  image: 'assets/images/dish1.png',
                  Title: ' غسالة صحون الحافظ',
                  Discription: 'حرارة عالية',
                ),
                SizedBox(
                  width: 5,
                ),
                ViewList(
                  image: 'assets/images/dish2.png',
                  Title: 'غسالة صحون LG',
                  Discription: 'غسيل و تنشيف بنفس الوقت',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ViewList(
                  image: 'assets/images/dish3.png',
                  Title: ' غسالة SAMSUNG',
                  Discription: 'طبقتان Stainless Steel',
                ),
                SizedBox(
                  width: 5,
                ),
                ViewList(
                  image: 'assets/images/dish4.png',
                  Title: 'غسالة Star Away',
                  Discription: 'مقاومة للصدأ',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
