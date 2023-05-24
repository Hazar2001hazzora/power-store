import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/main.dart';
import 'package:power_store1/view/login/login_view.dart';

import '../../../constants/SizeConfig/size_config.dart';
import '../../HomePage/Bottom Nav Bar/bottom_navigation_bar.dart';
import '../../OnBoarding/on_boarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 240,
          ),
          Center(
            child: FadeTransition(
              opacity: fadingAnimation!,
              child: Image.asset('assets/images/splash.png'),
            ),
          ),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      if(sharedprefs.getBool("page_after_splash")==true){
        Get.offAll(()=>bottomNavigationBarScreen());
      }
      else{
      Get.offAll(() => OnBoardingView(), transition: Transition.fade);
    }});
  }
}
