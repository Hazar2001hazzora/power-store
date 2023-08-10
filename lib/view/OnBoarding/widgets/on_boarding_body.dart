import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/main.dart';

import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../login/login_view.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';



class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {

  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(
        initialPage: 0
    )..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 19,
          child: CustomIndicator(
            dotIndex: (pageController!.hasClients ? pageController?.page : 0)!.toInt() ,
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: (){
                //SignUpFormState().submitForm("email", "password");
                if(pageController!.page! < 2 ){
                  pageController?.nextPage(duration: Duration(milliseconds: 500),
                      curve:Curves.easeIn);
                }
                else
                {
                  Get.offAll( () => LoginView() , transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                  print(sharedprefs.getString("page"));
                }
              },
              text:pageController!.hasClients ?  (pageController?.page == 2 ? 'Get Started' : 'Next') : 'Next',
            )),
      ],
    );
  }
}
