import 'package:flutter/material.dart';

import '../widgets/appBar/app_Bar.dart';

class Profits extends StatelessWidget {
  const Profits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Profits'),
    );
  }
}
