import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/widgets/smart_sections_body.dart';
import '../../constants/Buttons/custom_buttons.dart';
import '../../constants/SizeConfig/size_config.dart';
import '../Companys/companys_body.dart';
import '../Gallery Sections/widgets/personal_sections_body.dart';
import '../Gallery/gallery_company.dart';
import '../Gallery/gallery_list.dart';
import '../Gallery/gallery_list2.dart';
import '../Gallery/gallery_list3.dart';
import '../HomePage/section_rows/section_rows.dart';
import '../HomePage/section_titles/section_titles.dart';
import '../Sales/sales_body.dart';
import '../Sales/sales_list.dart';
import '../mycart/empty_cart.dart';
import '../widgets/appBar/app_Bar.dart';

class HomePageSeller extends StatefulWidget {
  const HomePageSeller({Key? key}) : super(key: key);

  @override
  State<HomePageSeller> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageSeller> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: '          Power Store'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Title1(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SalesTitle(),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.42,
                ),
                SeeAllButton(
                  onTap: () {
                    Get.to(() => SalesBody(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SalesList(),
            SizedBox(
              height: 30,
            ),
            SectionRow(),
            SizedBox(
              height: 10,
            ),
            GalleryList(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SectionTitle2(),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.46,
                ),
                SeeAllButton(
                  onTap: () {
                    Get.to(() => SmartSectionsBody(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GalleryList2(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SectionTitle3(),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.46,
                ),
                SeeAllButton(
                  onTap: () {
                    Get.to(() => PersonalSectionBody(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            GalleryList3(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SectionTitle4(),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.53,
                ),
                SeeAllButton(
                  onTap: () {
                    Get.to(() => CompaniesBody(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            GalleryCompany(),
          ],
        ),
      ),
    );
  }
}
