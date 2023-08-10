import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: 45,
                ),
              ),
              Positioned(
                top: SizeConfig.defaultSize! * 2.5,
                left: SizeConfig.defaultSize! * 20,
                child: Text(
                  ': About Power Store ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              ArrowBack(
                onTap: () {
                  Get.back();
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Power Store is an e-commerce application concerned with online shopping, established by a group of young men and women specialized in e-marketing and business management.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'The Power Store project keeps pace with the modernity and development of this era and aims to secure all needs with the ability to compare products and then purchase online.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'We at Power Store always strive to provide the best necessary services, such as securing goods from the best agents and international brands, offering them at competitive and thoughtful prices with free delivery to your door. Also, all the products offered are supported by pictures and explanations that match reality.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Every day is a new beginning in the Power Store family that strives to reach everyone and provide them with the best services.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 390,
            width: 390,
            child: Image.asset('assets/images/splash.png'),
          ),
        ],
      ),
    );
  }
}
