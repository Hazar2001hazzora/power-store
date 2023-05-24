import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefultButton({
  Color color = Colors.black54,
  double width = double.infinity,
  bool isupper = true,
  required String text,
  required Function function,

})
=>Container(
    width: width,
    color: color,
    child: MaterialButton(
        onPressed : (){
          function();
        },
        child: Text(
          isupper? text.toUpperCase() : text,
          style: TextStyle(
              color: Colors.white,fontSize: 20),)
    )
);