import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Appliances/Dish%20Washer/dish_washer_page.dart';
import 'package:power_store1/view/Appliances/Washer/washer_page.dart';
import 'package:power_store1/view/HomePage/home_page.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../Appliances/Blinders/blenders_page.dart';
import '../../Appliances/Fridges/fridge_page.dart';
import '../../widgets/appBar/app_Bar.dart';
import 'gallery_sections_item.dart';

class PersonalSectionBody extends StatelessWidget {
  const PersonalSectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: 'Personal Stuff'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => FridgePage(),
                            duration: Duration(milliseconds: 500),
                            transition: Transition.rightToLeft);
                      },
                      child: GallerySectionsItem(
                        image: 'assets/images/Braun.png',
                        Title: 'Bruan',
                      )),
                  SizedBox(
                    width: SizeConfig.defaultSize! *1.5,
                  ),
                  GallerySectionsItem(
                    image: 'assets/images/hairDryer.png',
                    Title: 'Hair Dryer',
                  ),
                ],
              ),
              Row(
                children: [
                  GallerySectionsItem(
                    image: 'assets/images/nailDryer.png',
                    Title: 'Nails Dryer',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
