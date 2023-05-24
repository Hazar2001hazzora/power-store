import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Appliances/Dish%20Washer/dish_washer_page.dart';
import 'package:power_store1/view/Appliances/Washer/washer_page.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../Appliances/Blinders/blenders_page.dart';
import '../../Appliances/Fridges/fridge_page.dart';
import '../../widgets/appBar/app_Bar.dart';
import 'gallery_sections_item.dart';

class GallerySectionsBody extends StatelessWidget {
  const GallerySectionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      appBar: myAppBar(Title: 'Appliances'),
      body: SingleChildScrollView(
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
                      image: 'assets/images/fridge.png',
                      Title: 'Fridges',
                    )),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/tv.png',
                  Title: 'TV & Screens',
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(() => WasherPage(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: GallerySectionsItem(
                    image: 'assets/images/washing.png',
                    Title: 'Cloths Washers',
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/oven.png',
                  Title: 'Kitchen Ovens',
                ),
              ],
            ),
            Row(
              children: [
                GallerySectionsItem(
                  image: 'assets/images/vaccum4.png',
                  Title: 'Vaccum Machines',
                ),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => BlenderPage(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: GallerySectionsItem(
                    image: 'assets/images/blender1.png',
                    Title: 'Blenders',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(() => DishWasherPage(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  child: GallerySectionsItem(
                    image: 'assets/images/dishWasher.png',
                    Title: 'Dish Washer',
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/phone1.png',
                  Title: 'Home Phones',
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }

}
