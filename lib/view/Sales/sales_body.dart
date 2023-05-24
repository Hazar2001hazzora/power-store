import 'package:flutter/material.dart';

import '../../constants/SizeConfig/size_config.dart';
import '../widgets/appBar/app_Bar.dart';

class SalesBody extends StatelessWidget {
  const SalesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: 'Sales and Offers'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),




          ],

        ),
      ),
    );
  }
}
