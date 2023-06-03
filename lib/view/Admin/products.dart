import 'package:flutter/material.dart';

import '../widgets/appBar/app_Bar.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: 'Products'),

    );
  }
}
