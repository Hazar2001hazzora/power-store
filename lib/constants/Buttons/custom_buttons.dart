import 'package:flutter/material.dart';

import '../Colors and Fonts/colors.dart';
import '../SizeConfig/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({required this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFF821b5e),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0xFF821b5e),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 25,
          width: 60,
          child: Center(
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Arrow extends StatelessWidget {
  const Arrow({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Positioned(
      right: 250,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: 250,
          child: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ArrowBack extends StatelessWidget {
  const ArrowBack({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Positioned(
      left: SizeConfig.defaultSize! * 26,
      top: SizeConfig.defaultSize! * 1.5,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: 250,
          child: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class SaveLocationButton extends StatelessWidget {
  const SaveLocationButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class AddButton extends StatelessWidget {
  const AddButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Add Attachments',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class SendButton extends StatelessWidget {
  const SendButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Send',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class DoneButton extends StatelessWidget {
  const DoneButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Done',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class AddProductButton extends StatelessWidget {
  const AddProductButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Add Product',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        height: 40,
        width: 160,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class BuyButton extends StatelessWidget {
  const BuyButton({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(
          child: Text(
            'Add To Cart',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          color: PurpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


