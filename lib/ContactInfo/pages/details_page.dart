import 'package:flutter/material.dart';

import '../../customWidgets/MyText.dart';

class DetailsPage extends StatelessWidget{
  final String name;
  final String username;
  final String city;
  final String zipcode;
  final String street;
  final String suite;
  final String email;
  final String phoneNo;
  final String websiteLink;
  final String companyName;
  const DetailsPage({
    required this.name,
    required this.username,
    required this.city,
    required this.zipcode,
    required this.suite,
    required this.street,
    required this.email,
    required this.phoneNo,
    required this.websiteLink,
    required this.companyName
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent.withOpacity(0.2),
            border: Border.all(width: 2, color: Colors.deepOrange.withOpacity(0.4)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(16)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText.sectionText("Name: $name",),
                MyText.sectionText("User Name: @$username"),
                MyText.sectionText("Present Job Company Name: $companyName"),
                SizedBox(height: 20,),
                MyText.sectionText("Permanent Address",textColor: Colors.deepOrange,size: 22,),
                MyText.sectionText("$city, $street, $suite, $zipcode"),
                SizedBox(height: 20,),
                MyText.sectionText("Contact With me for Any Information:",textColor: Colors.deepOrange,size: 22,),
                MyText.sectionText("Phone Number: $phoneNo"),
                MyText.sectionText("Email: $email"),
                MyText.sectionText("Website Link: $websiteLink"),
              ],
            ),
          ),

        ),
      ),
    );
  }
}