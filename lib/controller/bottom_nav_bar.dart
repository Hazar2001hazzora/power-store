// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../constants/Colors and Fonts/colors.dart';
// import '../view/HomePage/home_page.dart';
//
// var pageindex = 0.obs;
//  List Homepages = [
//       HomePage(),
//       //FavouritePage(),
//      //CategorysPage(),
//      //MyProfilePage(),
//      //MyCartPage(),
//  ];
//
// pageindx(index) {
//   pageindex.value = index;
// }
//
// getpage() {
//   return Homepages[pageindex.value];
// }
//
// class x extends StatelessWidget {
//   const x({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     //Get.put(HomeController());
//     //Get.put(Search_Controller());
//     //HomeController controllerHome = Get.find();
//     return Obx(() {
//       return Scaffold(
//           body: controllerHome.getpage(),
//           bottomNavigationBar: SafeArea(
//             child: GNav(
//                 curve: Curves.easeInOutExpo,
//                 duration: const Duration(milliseconds: 500),
//                 onTabChange: (val) => controllerHome.pageindx(val),
//                 gap: 5,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
//                 tabMargin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
//                 iconSize: 35,
//                 activeColor: Theme.of(context).primaryColor,
//                 color: const Color(0xffa8a7b6),
//                 hoverColor: const Color(0xffb9b9d9),
//                 tabBackgroundColor: Theme.of(context).canvasColor,
//                 tabs: [
//                   GButton(
//                     icon: Icons.home_outlined,
//                     text: translator.translate("Home"),
//                   ),
//                   GButton(
//                       icon: Icon(
//                         Icons.favorite,
//                         color: PurpleColor,
//                         text: translator.translate("Favourite"),
//                   ),
//                   GButton(
//                     icon: Icon(Icons.category_outlined),
//                     text: translator.translate("Categorys"),
//                   ),
//                   GButton(
//                     icon: Icon(Icons.account_box_rounded),
//                     text: translator.translate("My Profile"),
//                   ),
//                   GButton(
//                     icon: Icon(Icons.shopping_cart_checkout_rounded),
//                     text: translator.translate("My Cart"),
//                   ),
//                 ]),
//           ));
//     });
//   }
// }
import 'package:get/get.dart';
import 'package:power_store1/view/HomePage/home_page.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';
import 'package:power_store1/view/categorys/categorys_page.dart';
import 'package:power_store1/view/mycart/my_cart_page.dart';

import '../view/favourite/favourite_page.dart';

class bottomnavbarController extends GetxController{
  List pages=[
    HomePage(),
    favouritePage(),
    categorysPage(),
    MyProfile(),
    MyCartPage(),
  ];
  var index=0.obs;

  pageIndex(i){
    index.value=i;
  }
  getPage(){
    return pages[index.value];
  }
}