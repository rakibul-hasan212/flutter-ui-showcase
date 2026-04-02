import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          width: double.maxFinite,
          color: Colors.orange[50],
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text("I am a passionate Flutter Developer focused on building clean, "
                "responsive, and user-friendly mobile applications. I have hands-on experience developing projects "
                "such as a BMI Calculator, Counting App, and portfolio-based applications,"
                " which helped me strengthen my understanding of Flutter fundamentals, "
                "UI design, and app logic.",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),)),
          )
        ),

      ],

    );
  }

}