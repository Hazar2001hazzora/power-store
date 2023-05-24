import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/widgets/personal_sections_body.dart';
import 'package:power_store1/view/Gallery%20Sections/widgets/smart_sections_body.dart';
import 'package:power_store1/view/HomePage/home_page.dart';

import '../../constants/Colors and Fonts/colors.dart';
import '../Gallery Sections/gallery_sections_view.dart';
import '../widgets/appBar/app_Bar.dart';

class categorysPage extends StatelessWidget {
  const categorysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          Title: '           Categorys'),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => GallerySectionsView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
                child: Card(
                  elevation: 12,
                  color: Colors.grey[350],
                  child: Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/homeAppliances.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Appliances',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => SmartSectionsBody(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
                child: Card(
                  elevation: 12,
                  color: Colors.grey[350],
                  child: Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/devices.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Smart Devices',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => PersonalSectionBody(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
                child: Card(
                  elevation: 12,
                  color: Colors.grey[350],
                  child: Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/personal.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Personal Stuff',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }


}
