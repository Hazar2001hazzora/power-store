import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/TextFeild/custom_text_field.dart';
import 'package:power_store1/controller/imageProfile_controller.dart';
import 'package:power_store1/main.dart';
import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../../constants/TextFeild/edit_profile.dart';
import '../../../constants/TextFeild/location_text_field.dart';
import '../../HomePage/Bottom Nav Bar/bottom_navigation_bar.dart';
import '../Location/my_location.dart';
import '../my_profile.dart';
AssetImage defaultImage = AssetImage('assets/images/avatar.png') ;
File? image;
class EditProfile extends StatefulWidget {
   EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool moveToPage=false;
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneNumController = TextEditingController();
  var emailController = TextEditingController();
  var locationController = TextEditingController();


  void uploadImage()async{

  var pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickedImage!=null) {
      setState(() {
        image = File(pickedImage!.path);
      });
    }
    else{}

  }



  Future <void> profileEdit() async {
    showDialog(context: context, builder: (context) {
      return const Center(child: CircularProgressIndicator());
    });
    try{
    final token = sharedprefs.getString('token');
    final url = Endpoints.editProfile;
    if (image != null) {
      final response = await http.post(
          Uri.parse(url),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: {
            'name': nameController.text,
            'email': emailController.text,
            'password': passwordController.text,
            'address': locationController.text,
            'phone': phoneNumController.text,
            'image': image.toString(),
          });
      print(nameController.text);
      print(locationController.text);
      print(response.statusCode);
      print(image.toString());
      if (response.statusCode == 200) {
        moveToPage=true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Your profile is edited')),
        );
      }
      else{ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to edit profile')),
      );}
    }
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to edit profile')),
      );
  }
    Navigator.of(context).pop();
    }
  @override
  void initState() {
    EditProfile();
    super.initState();
  }
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
                    Get.back();
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
                  child: CircleAvatar (
                    radius: 105,
                      backgroundImage: (image!=null)?FileImage(image!) as ImageProvider : defaultImage,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 250,
                  child: IconButton(
                    onPressed: uploadImage,
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
              controller: nameController,
              inputType: TextInputType.name,
              onChanged: (value){},
              text: 'Name:',
              validator: (value) {  },),

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
            EditName(
              controller: passwordController,
              inputType: TextInputType.visiblePassword,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Password:',
            ),
            LocationTextFeild(
              controller: locationController,
              inputType: TextInputType.text,
              onChanged: (String value) {},
              validator: (value) {},
              text: 'Your Location:',
            ),
            SizedBox(
              height: 30,
            ),
            DoneButton(onTap:()async{
             await profileEdit();
             if(moveToPage){
              Get.offAll(()=>bottomNavigationBarScreen());}
            } )
          ],
        ),
      ),
    );
  }
}
