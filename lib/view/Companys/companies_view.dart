import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import 'package:power_store1/view/HomePage/home_page.dart';

import '../../../constants/SizeConfig/size_config.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 165,
                  width: SizeConfig.defaultSize! * 16,
                  color: Colors.grey[350],
                  child: CircleAvatar(
                    //backgroundColor: PurpleColor,
                    backgroundImage: AssetImage(image),
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
