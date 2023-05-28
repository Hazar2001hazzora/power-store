import 'package:flutter/material.dart';

import '../../widgets/appBar/app_Bar.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: '          Add Product'),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
