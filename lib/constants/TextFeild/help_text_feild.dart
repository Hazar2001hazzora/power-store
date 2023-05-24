import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Colors and Fonts/colors.dart';

class HelpTextFeild extends StatefulWidget {
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  final int? maxLines;
  final FormFieldValidator validator;
  final String text;
  final ValueChanged<String> onChanged;





  HelpTextFeild({
    required this.inputType,
    this.onSaved,
    required this.onChanged,
    this.maxLines,
    required this.validator,
    required this.text,


  });

  @override
  State<HelpTextFeild> createState() => _HelpTextFeild();
}

class _HelpTextFeild extends State<HelpTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(14),
        child:
        TextFormField(
          validator: widget.validator,
          keyboardType: widget.inputType,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          maxLines: 10,
          decoration: InputDecoration(
            labelText: widget.text,
            hintText: widget.text,
            errorStyle: TextStyle(color: PurpleColor),
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              borderSide: BorderSide(
                color: PurpleColor,
              ),
            ),
          ),
        ));
  }
}
