import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Admin/products.dart';
import 'package:power_store1/view/Admin/profits.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../widgets/appBar/app_Bar.dart';
import 'activities.dart';
import 'admin_view.dart';
import 'edit_admin.dart';
import 'edit_companies.dart';
import 'members.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: '          Admin Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdminView(text: 'Admin', onTap: () {
                  Get.to(() => EditAdmin(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                }),
                AdminView(text: 'Members', onTap: () {
                  Get.to(() => Members(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdminView(
                    text: 'Companies',
                    onTap: () {
                      Get.to(() => EditCompanies(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    }),
                AdminView(text: 'Products',
                    onTap: () {
                      Get.to(() => Products(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdminView(text: 'Profits',
                    onTap: () {
                  Get.to(() => Profits(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                }),
                AdminView(text: 'Activities', onTap: () {
                  Get.to(() => Activities(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
