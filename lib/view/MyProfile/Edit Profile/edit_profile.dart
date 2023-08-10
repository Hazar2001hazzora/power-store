import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../../constants/TextFeild/edit_profile.dart';
import '../../../constants/TextFeild/location_text_field.dart';
import '../my_profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

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
                    ': Edit Profile  ',
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
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 408,
                    height: 200,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/edit.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 250,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_a_photo_sharp,
                      color: PurpleColor,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            EditName(
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Name:',
            ),

            SizedBox(
              height: 10,
            ),
            EditName(
              inputType: TextInputType.phone,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Phone Number:',
            ),
            SizedBox(
              height: 10,
            ),
            LocationTextFeild(
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Your Location:',
            ),
            SizedBox(
              height: 30,
            ),
            DoneButton(),
          ],
        ),
      ),
    );
  }
}
