import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

import '../widgets/appBar/app_Bar.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Power Store'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 350,
              width: 350,
              child: Image.asset(
                'assets/images/cart.png',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Your Shopping Cart Is Empty !',
          style: TextStyle(
          fontSize: 20,
            fontWeight: FontWeight.w400,
            color: PurpleColor,
          ),
            ),
        ],
      ),
    );
  }
}
