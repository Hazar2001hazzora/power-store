import 'package:flutter/material.dart';

import '../../constants/SizeConfig/size_config.dart';
import '../widgets/appBar/app_Bar.dart';

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: 'Companies'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [



            ],
          ),
        ),
      ),
    );
  }
}
