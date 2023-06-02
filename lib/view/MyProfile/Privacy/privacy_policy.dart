import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';

import '../../../constants/SizeConfig/size_config.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
                    ': Privace and Policy',
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
                    padding: const EdgeInsets.all(10),
                    child: Text('We at Power Store are committed to protecting the privacy of the data of all users of our site or our mobile application, as the site controls the data you provide to us. The following are the terms of the privacy policy that explain how we use and protect your information, please see:',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('1- Do you have any questions about the privacy policy or the way our company handles your data? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text( 'For any information, please contact us through the following means:',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 168),
                    child: Text(  'By e-mail: power.store@gmail.com.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 59 , top: 10),
                    child: Text( 'Or by phone or WhatsApp at the number: +963 938 367 851',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text( '2. What information do we collect about you as a customer of the DigiShi website or application?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text( 'When you create an account in the Application or complete a purchase order on the Site, we ask you to provide information about yourself including your name, contact information, and payment and receiving address. We also collect information about your use of addresses and data about you from messages you send and comments you write or feedback you leave when contacting us.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text( '3. Is customer information disclosed? With whom is this information shared?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11),
                    child: Text( 'Under the Online Communications and Cybercrime Act, you may have a number of rights in relation to the data we hold about you.If you wish to exercise any of these rights, please contact our Data Protection Officer using the contact details provided above. For additional information about your rights, please review Legislative Decree No. 17 of 2012, which includes the law regulating online communication and combating information crime.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 10),
                    child: Text( '4. How is the customer alerted of changes in the privacy policy?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text( 'Any changes to our privacy policy will be posted on our website, where applicable, and we will notify you of the changes for example by email, our social media pages and via customer service.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 95 , top: 10),
                    child: Text( '5. How long does the site keep customer information?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: PurpleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text( 'Your information is retained as necessary and in line with the site\'s legitimate interest or for a period required by applicable laws, such as information retention for statistical or evaluation purposes.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
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
