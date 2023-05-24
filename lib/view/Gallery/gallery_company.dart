import 'package:flutter/material.dart';
import 'company_view.dart';

class GalleryCompany extends StatelessWidget {
  const GalleryCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CompanyView(
            image: 'assets/images/LG.png',
          ),
          CompanyView(
            image: 'assets/images/Samsung.png',
          ),
          CompanyView(
            image: 'assets/images/BraunLOGO.png',
          ), CompanyView(
            image: 'assets/images/highLIFE.png',
          ), CompanyView(
            image: 'assets/images/panasonic.png',
          ), CompanyView(
            image: 'assets/images/isus.png',
          ),
        ],
      ),
    );
  }
}
