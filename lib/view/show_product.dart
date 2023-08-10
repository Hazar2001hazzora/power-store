import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import 'package:power_store1/view/widgets/appBar/app_Bar.dart';

import '../constants/Buttons/custom_buttons.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({Key? key}) : super(key: key);

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Power Store'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Card(
                elevation: 10,
                shadowColor: PurpleColor,
                child: Container(
                  height: 250,
                  width: 320,
                  child: Image.asset('assets/images/fridge1.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Al Hafiz Fridge',
                    style: TextStyle(
                      fontSize: 20,
                      color: PurpleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: PurpleColor,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Text(
                    'Company:',
                    style: TextStyle(
                      fontSize: 20,
                      color: PurpleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Al Hafiz',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Description: ',
                style: TextStyle(
                  fontSize: 20,
                  color: PurpleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Air Cooling',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Two Doors',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text(
                'Tow Drawers',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text(
                'Available Colors: ',
                style: TextStyle(
                  fontSize: 20,
                  color: PurpleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Price:',
                    style: TextStyle(
                      fontSize: 20,
                      color: PurpleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '3,500,000  S.P',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: PurpleColor,
              height: 10,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: PurpleColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.minimize,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 70,
                    bottom: 5,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BuyButton(),
          ],
        ),
      ),
    );
  }
}
