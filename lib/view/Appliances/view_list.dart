import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

class ViewList extends StatelessWidget {
  const ViewList(
      {required this.image, required this.Title, required this.Discription , required this.onTap});
  final String image;
  final String Title;
  final String Discription;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 7,
          shadowColor: PurpleColor,
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: PurpleColor,
                ),
              ),
              Container(
                height: 175,
                width: 175,
                child: Image.asset(image),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  Title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: PurpleColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                Discription,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: PurpleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
