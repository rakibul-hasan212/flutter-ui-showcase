import 'package:flutter/material.dart';

class QuotesSectionPage extends StatelessWidget{
  QuotesSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      color: Colors.lime[50],
      child: Center(
          child: Text(
            "\"It does not matter how slowly \nyou go as long as you do not stop\"",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.red[400]),
          )),
    );
  }


}