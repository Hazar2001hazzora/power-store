import 'package:flutter/material.dart';

import '../widgets/appBar/app_Bar.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Activities'),

    );
  }
}
