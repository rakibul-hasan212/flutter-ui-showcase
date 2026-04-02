import 'package:flutter/material.dart';

class ToDoMassage extends StatelessWidget{
  final String text;
  final double size;
  final bool checker;
  final Color? textColor;

  ToDoMassage(
      {
        super.key,
        required this.text,
        required this.size,
        required this.checker,
        this.textColor = Colors.black87
      }
      );

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: size,
          color: textColor,
          decoration: checker ? TextDecoration.lineThrough : TextDecoration.none
        )
        );
  }
}