import 'package:flutter/material.dart';

import '../widgets/appBar/app_Bar.dart';
import 'list_companies.dart';

class EditCompanies extends StatelessWidget {
  const EditCompanies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Edit Companies'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ListCompanies(text: 'LG',),
            ListCompanies(text: 'Samsung',),
            ListCompanies(text: 'Toshiba',),
            ListCompanies(text: 'Asus',),
            ListCompanies(text: 'Dell',),
            ListCompanies(text: 'High Life',),
            ListCompanies(text: 'Huwawi',),
            ListCompanies(text: 'Al Hafiz',),
            ListCompanies(text: 'Star ways',),
            ListCompanies(text: 'Iphone',),
            ListCompanies(text: 'Panasonic',),
            ListCompanies(text: 'Ramco',),
            ListCompanies(text: 'Braun',),
            ListCompanies(text: 'Berta',),
            ListCompanies(text: 'Energy Max',),
            ListCompanies(text: 'Rebune',),
            ListCompanies(text: 'Sun UV',),
            ListCompanies(text: 'Smart Sensor',),
          ],
        ),
      ),
    );
  }
}
