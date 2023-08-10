import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../../constants/TextFeild/custom_text_field.dart';
import '../../../constants/TextFeild/help_text_feild.dart';
import '../../../constants/TextFeild/location_text_field.dart';
import '../my_profile.dart';

class CallUs extends StatefulWidget {
  const CallUs({this.maxLines});
  final int? maxLines;

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  var emailcont = TextEditingController();

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
                  left: SizeConfig.defaultSize! * 30,
                  child: Text(
                    ': Call Us ',
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Dear subscriber, if you want to contact us, inform us of a problem, or inquire about more details, you can communicate via the information below :',
                style: TextStyle(
                  color: PurpleColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Phone: 0938367851  -  0932337865 - 0112113367',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 105),
              child: Text(
                'Our Email:  power.store@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Location: Damascus , Al Mazzeh , Power Store Building',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
