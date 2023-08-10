import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';

import '../../../constants/SizeConfig/size_config.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

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
                  left: SizeConfig.defaultSize! * 20,
                  child: Text(
                    ': Terms & Conditions',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 235 , top: 10),
                    child: Text( 'Welcome To Power Store!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text( 'This page includes the conditions for benefiting from the e-commerce services provided by Power Store, so please read it carefully before the purchase process, and when you benefit from our services, this means that you agree to these terms and conditions.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 240),
                    child: Text( 'How Power Store works:',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text( 'Various products from several categories are displayed within the Power Store platform, in addition to mentioning all product specifications and prices as determined by the source, which allows the user to choose what he desires and add it to his shopping cart, and then complete the shopping process by creating a purchase order. Linked to the user\'s information, including full name, mobile number, and receiving address, in order to process his request and deliver the required products in accordance with the regulations, laws, and conditions listed.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 110 , top: 10),
                    child: Text( 'Create a customer account with Power Store:',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text( 'Anyone can view the Power Store application, but in order to benefit from our services and send purchase orders, he needs to create an account using his mobile number, and he can also log out of his account at any time.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 268, top: 10),
                    child: Text( 'Prices and payment:',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text( 'The offered prices are subject to change at any moment according to what we are informed by the source in the Syrian markets, so the prices may change while browsing the application or the site, and in the event of a request and an error or modification in the price from the source, the customer is notified as soon as possible and he has the right to confirm the request at the new price or cancel it at no cost.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
