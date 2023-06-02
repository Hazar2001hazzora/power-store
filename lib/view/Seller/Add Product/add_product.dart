import 'dart:io';
import 'package:flutter/material.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';
import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/SizeConfig/size_config.dart';
import '../../../constants/TextFeild/add_product_field.dart';
import '../../widgets/appBar/app_Bar.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  File? _image;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: '          Add Product'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Please Fill The Information Below :',
                style: TextStyle(
                  fontSize: 20,
                  color: PurpleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AddProductField(
                inputType: TextInputType.text,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Name: ',
              ),
              SizedBox(
                height: 5,
              ),
              AddProductField(
                inputType: TextInputType.text,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Category: ',
              ),
              SizedBox(
                height: 5,
              ),
              AddProductField(
                inputType: TextInputType.text,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Description: ',
              ),
              SizedBox(
                height: 5,
              ),
              AddProductField(
                inputType: TextInputType.number,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Price: ',
              ),
              SizedBox(
                height: 5,
              ),
              AddProductField(
                inputType: TextInputType.number,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Available Quantity: ',
              ),
              SizedBox(
                height: 5,
              ),
              AddProductField(
                inputType: TextInputType.text,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Company: ',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'With Discount',
                    style: TextStyle(
                      fontSize: 20,
                      color: PurpleColor,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Without Discount',
                    style: TextStyle(
                      fontSize: 20,
                      color: PurpleColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Checkbox(
                    value: _isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _isChecked = newValue!;
                        _isChecked2 = !newValue;
                      });
                    },
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                  ),
                  SizedBox(
                    width: 165,
                  ),
                  Checkbox(
                    value: _isChecked2,
                    onChanged: (newValue) {
                      setState(() {
                        _isChecked2 = newValue!;
                        _isChecked = !newValue;
                        print(_isChecked2);
                      });
                    },
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              AddProductField(
                inputType: TextInputType.number,
                onChanged: (String value) {},
                validator: (value) {},
                text: 'Discount:%',
              ),
              Text(
                'Pick Photo: ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 160,
                height: 160,
                child: Image.asset('assets/images/addPhoto.png'),
              ),
              SizedBox(
                height: 20,
              ),
              AddProductButton(),
              SizedBox(
                height: 30,
              ),

              // InkWell(
              //       onTap: () async {
              //         final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
              //         setState(() {
              //           if (pickedFile != null) {
              //             _image = File(pickedFile.path);
              //           }
              //         });
              //       },
              //   child: Container(
              //     height: 140,
              //     width: 140,
              //     child: CircleAvatar(
              //      child: _image != null ? Image.file(_image!) : Image.asset('assets/images/addPhoto.png'),
              //       //foregroundImage: ,
              //     ),
              //   ),),
            ],
          ),
        ),
      ),
    );
  }
}
