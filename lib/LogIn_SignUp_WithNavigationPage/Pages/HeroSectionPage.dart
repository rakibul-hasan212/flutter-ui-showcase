import 'package:flutter/material.dart';

class HeroSectionPage extends StatelessWidget{
  HeroSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 150,
              color: Colors.blue[100],
            ),
            Container(
              width: double.maxFinite,
              height: 150,
              color: Colors.lime[100],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 200,
              height: 200,
              //color: Colors.red[100],
              child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 40,
                  backgroundImage:
                  AssetImage("assets/images/rakib.jpeg") //add your image
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Md. Rakibul Hasan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Flutter Devoloper",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey),
            )
          ],
        )
      ],
    );
  }

}