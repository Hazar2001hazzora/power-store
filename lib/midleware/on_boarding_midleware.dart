import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:power_store1/main.dart';

class OnBoardingMidleWare extends GetMiddleware{

  @override
  int? get priority=>1;

  @override
  RouteSettings? redirect(String? route) {
    if(sharedprefs!.getString("page_after_splash")==true)
      return RouteSettings(name: "/login");
  }
}