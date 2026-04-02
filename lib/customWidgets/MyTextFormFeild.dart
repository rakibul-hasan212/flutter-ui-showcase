import 'package:flutter/material.dart';

class MyTextFormFeild extends StatelessWidget {
  //label attribute
  final String labelName;
  final Color? labelNameColors;
  final double? labelNameFontSize;

  //hint attribute
  final String? hintMessage;
  final double? hintMessageFontSize;
  final Color? hintMessageColors;

  final IconData? preIconName;
  final Color? preIconColor;

  final IconData? suffixIconName;
  final Color? suffixIconColor;

  final double? intialRadius;

  const MyTextFormFeild(
      {super.key,
      required this.labelName,
      this.labelNameColors = Colors.grey,
      this.labelNameFontSize = 20,
      this.hintMessage = " ",
      this.hintMessageColors = Colors.grey,
      this.hintMessageFontSize = 20,
      this.preIconName,
      this.preIconColor = Colors.grey,
      this.suffixIconName,
      this.suffixIconColor = Colors.grey,
      this.intialRadius = 16});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: TextEditingController(), since it's a statelesswidget that's why it comment
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          label: Text(labelName),
          labelStyle: TextStyle(
              fontSize: labelNameFontSize,
              fontWeight: FontWeight.bold,
              color: labelNameColors),
          hintText: hintMessage,
          hintStyle: TextStyle(
              fontSize: hintMessageFontSize,
              fontWeight: FontWeight.bold,
              color: hintMessageColors),
          prefixIcon: Icon(
            preIconName,
            color: preIconColor,
          ),
          suffixIcon: Icon(
            suffixIconName,
            color: suffixIconColor,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(intialRadius!))),
    );
  }
}
