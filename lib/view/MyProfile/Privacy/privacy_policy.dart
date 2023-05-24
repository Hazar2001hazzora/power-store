import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';

import '../../../constants/SizeConfig/size_config.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
                left: SizeConfig.defaultSize! * 24,
                child: Text(
                  ': Privacy Policy ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              ArrowBack(
                onTap: () {
                  Get.to(() => MyProfile(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
              ),
            ],
          ),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
