import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';
import '../widgets/appBar/app_Bar.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Products'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: PurpleColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 10,
                child: Text(
                  'Add  Products: ',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


    );
  }
}
