import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';
import '../../constants/SizeConfig/size_config.dart';
import '../widgets/appBar/app_Bar.dart';
import 'my_cart_view.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: '          My Cart'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            MyCartView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 20,
            ),
            MyCartView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 20,
            ),
            MyCartView(
              image: '',
              Title: '',
              Discription: '',
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
