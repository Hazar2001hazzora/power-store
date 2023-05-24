import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/SizeConfig/size_config.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../Gallery Sections/gallery_sections_view.dart';
import '../../Gallery Sections/widgets/smart_sections_body.dart';
import '../../OnBoarding/on_boarding_view.dart';


Widget Title1() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Get.to(() => SmartSectionsBody(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 85),
          child: Text(
            'What Do You Want To Order ? ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}


Widget SalesTitle() {
  return Row(
    children: [
      GestureDetector(
        onTap: (){

        },
        child: Text(
          '  Sales and offers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: PurpleColor,
            fontSize: 20,
          ),
        ),
      ),
    ],
  );
}

Widget SectionTitle1() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Get.to(() => GallerySectionsView(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            ' Appliances',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget SectionTitle2() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Get.to(() => SmartSectionsBody(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            ' Smart Devices',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget SectionTitle3() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 6),
        child: Text(
          ' Personal Stuff',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: PurpleColor,
            fontSize: 20,
          ),
        ),
      ),
    ],
  );
}

Widget SectionTitle4() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Get.to(() => SmartSectionsBody(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            ' Companies',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}
