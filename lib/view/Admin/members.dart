import 'package:flutter/material.dart';

import '../widgets/appBar/app_Bar.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Search Members'),

    );
  }
}
