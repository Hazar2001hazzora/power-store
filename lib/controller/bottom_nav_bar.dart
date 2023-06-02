import 'package:get/get.dart';
import 'package:power_store1/view/HomePage/home_page.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';
import 'package:power_store1/view/categorys/categorys_page.dart';
import 'package:power_store1/view/mycart/empty_cart.dart';
import 'package:power_store1/view/mycart/my_cart_page.dart';

import '../view/favourite/favourite_page.dart';

class bottomnavbarController extends GetxController{
  List pages=[
    HomePage(),
    favouritePage(),
    categorysPage(),
    MyProfile(),
    EmptyCart(),
  ];
  var index=0.obs;

  pageIndex(i){
    index.value=i;
  }
  getPage(){
    return pages[index.value];
  }
}