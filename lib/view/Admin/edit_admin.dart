import 'package:flutter/material.dart';

import '../../constants/Buttons/custom_buttons.dart';
import '../../constants/Colors and Fonts/colors.dart';
import '../../constants/SizeConfig/size_config.dart';
import '../../constants/TextFeild/edit_profile.dart';
import '../widgets/appBar/app_Bar.dart';

class EditAdmin extends StatelessWidget {
  EditAdmin({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneNumController = TextEditingController();
  var emailController = TextEditingController();
  var locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: 'Edit Admin'),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              controller:nameController ,
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Name:',
            ),
            SizedBox(
              height: 10,
            ),

            EditName(
              controller: phoneNumController,
              inputType: TextInputType.phone,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Phone Number:',
            ),
            SizedBox(
              height: 10,
            ),
            EditName(
              controller: emailController,
              inputType: TextInputType.emailAddress,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Email:',
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
