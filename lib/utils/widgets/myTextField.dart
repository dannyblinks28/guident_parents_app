import 'package:flutter/material.dart';
import 'package:proprietor_app/constants/colors.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final bool readyOnly;
   

  final Color borderColor;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isPassword,
    required this.readyOnly,
    required this.borderColor,
     
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        readOnly: null == widget.readyOnly ? false : true,
        obscureText: null == widget.isPassword ? false : true,
        decoration: InputDecoration(
           
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ConstantColors.textFieldColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ConstantColors.textFieldColor,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ConstantColors.textFieldColor,
              width: 1,
            ),
          ),
          hintText: null == widget.hintText ? "" : widget.hintText,
        ),
      ),
    );
  }
}
