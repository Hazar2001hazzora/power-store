import 'package:flutter/material.dart';


class CompanyView extends StatelessWidget {
  const CompanyView({required this.image });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: Card(
          elevation: 10,
          child: Container(
            height: 150,
            width: 170,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Center(
                  child: Image.asset(image),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
