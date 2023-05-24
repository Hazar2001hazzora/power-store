import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../../constants/TextFeild/location_text_field.dart';
import '../my_profile.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  left: SizeConfig.defaultSize! * 26,
                  child: Text(
                    ': My Location ',
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'Country',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 50,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: PurpleColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'City',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 50,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: PurpleColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            LocationTextFeild(
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Specific Location:',
            ),
            SizedBox(height: 40,),
            SaveLocationButton(),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 250,
                width: SizeConfig.screenWidth,
                child: Image.asset('assets/images/location.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
