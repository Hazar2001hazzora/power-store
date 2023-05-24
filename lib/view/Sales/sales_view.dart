import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';

class SalesView extends StatelessWidget {
  const SalesView({required this.image });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: Container(
          height: 180,
          width: 250,
          color: Colors.grey[350],
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
    );
  }
}
