import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';
import '../widgets/appBar/app_Bar.dart';
import 'favourite_view.dart';

class favouritePage extends StatelessWidget {
  const favouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Title: '          Favourite'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            FavouriteView(image: '', Title: '', Discription: '',),
            SizedBox(height: 10,),
            FavouriteView(image: '', Title: '', Discription: '',),
            SizedBox(height: 10,),
            FavouriteView(image: '', Title: '', Discription: '',),
            SizedBox(height: 10,),
            FavouriteView(image: '', Title: '', Discription: '',),
          ],
        ),
      ),
    );
  }
}
