import 'dart:io';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class ImageProfileController extends GetxController{
  Rx<File?> _image = Rx<File?>(null);
  File? get image => _image.value;
  void pickImage () async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickedFile != null){
      _image.value=File(pickedFile.path);
    }
    else{}
  }
}