import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/MyProfile/Privacy/privacy_policy.dart';
import 'package:power_store1/view/MyProfile/Terms/terms_conditions.dart';
import '../../constants/Buttons/custom_buttons.dart';
import '../../constants/SizeConfig/size_config.dart';
import '../../main.dart';
import '../splash/splash_view.dart';
import 'Edit Profile/edit_profile.dart';
import 'About Power Store/about_power_store.dart';
import 'Call Us/call_us.dart';
import 'Location/my_location.dart';
import 'Orders/my_orders.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 408,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 305,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(() => EditProfile(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 294,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(() => EditProfile(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    child: Text(
                      'Hazar Zarefa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 280,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(() => EditProfile(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    child: Text(
                      '+963 938367851',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            /*******/
            /*******/
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(() => MyOrders(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 280,
                        child: Text(
                          'My Orders',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 377,
                        child: Icon(
                          Icons.file_copy_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => MyOrders(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                /******/
                /******/
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => MyLocation(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 265,
                        child: Text(
                          'My Location',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 377,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => MyLocation(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                /*******/
                /******/
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => TermsConditions(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 188,
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 374,
                        top: 8,
                        child: Icon(
                          Icons.gavel,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => TermsConditions(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => About(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 214,
                        child: Text(
                          'About Power Store',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 377,
                        child: Icon(
                          Icons.lightbulb,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => About(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => PrivacyPolicy(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 253,
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 377,
                        child: Icon(
                          Icons.shield_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => PrivacyPolicy(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => CallUs(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 308,
                        child: Text(
                          'Call Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 377,
                        child: Icon(
                          Icons.phone_callback_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Arrow(
                        onTap: () {
                          Get.to(() => CallUs(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 400,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 180,
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      child: IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title:"Warning!",
                            middleText: "Are you sure you wanna log out?",
                            textConfirm: "Log out",
                            onConfirm:(){
                              sharedprefs.setBool('page_after_splash',false);
                              Get.offAll(SplashView());
                            },
                            textCancel: "Cancel",
                          );
                        },
                        icon: Icon(
                          Icons.logout_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
