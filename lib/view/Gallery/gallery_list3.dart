import 'package:flutter/material.dart';
import 'gallery_view.dart';

class GalleryList3 extends StatelessWidget {
  const GalleryList3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GalleryView(
            text: 'Hair Dryer',
            image: 'assets/images/hairDryer.png',
          ),
          GalleryView(
            text: 'Nails Dryer',
            image: 'assets/images/nailDryer.png',
          ),
          GalleryView(
            text: 'Braun',
            image: 'assets/images/Braun.png',
          ),
        ],
      ),
    );
  }
}
