import 'package:flutter/material.dart';

class Projects extends StatelessWidget{
  Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.orange[100],
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16)
                    ),
                  )

                ],
              )
            ],
          ),
    );
  }
  
}