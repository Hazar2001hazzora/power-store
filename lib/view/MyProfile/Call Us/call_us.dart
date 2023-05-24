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
            Text(
              'Enter Your Email:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: emailcont,
              maxLines: widget.maxLines,
              inputType: TextInputType.emailAddress,
              prefix: Icons.email,
              onChanged: (Value) {
                print(Value);
              },
              validator: (Value) {
                if (Value.isEmpty) {
                  return "please enter your Email Adress";
                }
                return null;
              },
              text: 'Email Adress',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'How We Can Help You ?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            HelpTextFeild(
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Type here :',
            ),
            SizedBox(
              height: 10,
            ),
            AddButton(
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            SendButton(),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              'Information About Power Store',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Location: Damascus , Al Mazzeh , Power Store Building',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Contact Us: 0938367851  -  0932337865 - 0112113367',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 105),
              child: Text('Our Email:  power.store@gmail.com',
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
