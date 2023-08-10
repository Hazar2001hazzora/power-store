import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/controller/login_controller.dart';

import '../Colors and Fonts/colors.dart';

class AddProductField extends StatefulWidget {
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  final int? maxLines;
  final FormFieldValidator validator;
  final String text;
  final ValueChanged<String> onChanged;

  AddProductField({
    required this.inputType,
    this.onSaved,
    required this.onChanged,
    this.maxLines,
    required this.validator,
    required this.text,
  });

  @override
  State<AddProductField> createState() => _AddProductFieldState();
}

class _AddProductFieldState extends State<AddProductField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: TextFormField(
        validator: widget.validator,
        keyboardType: widget.inputType,
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          labelText: widget.text,
          hintText: widget.text,
          errorStyle: TextStyle(color: Colors.purple),

          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            borderSide: BorderSide(
              color: PurpleColor,
            ),
          ),
        ),
      ),
    );
  }
}
