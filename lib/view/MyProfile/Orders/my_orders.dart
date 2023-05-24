import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../my_profile.dart';
import 'orders_view.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

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
                  left: SizeConfig.defaultSize!*26,
                  child: Text(
                    ':  My Orders ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
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
            OrdersView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 10,
            ),
            OrdersView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 10,
            ),
            OrdersView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 10,
            ),
            OrdersView(
              image: '',
              Title: '',
              Discription: '',
            ),
          ],
        ),
      ),
    );
  }
}
