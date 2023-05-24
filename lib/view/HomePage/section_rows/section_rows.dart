import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/constants/SizeConfig/size_config.dart';
import 'package:power_store1/view/HomePage/section_titles/section_titles.dart';

import '../../Gallery Sections/gallery_sections_view.dart';

Widget SectionRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SectionTitle1(),
      SizedBox(
        width: SizeConfig.defaultSize!*22.5,
      ),
      SeeAllButton(
        onTap: () {
          Get.to(() => GallerySectionsView(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
      ),
    ],
  );
}
