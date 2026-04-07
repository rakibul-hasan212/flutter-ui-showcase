import 'package:counting/customWidgets/MyText.dart';
import 'package:flutter/material.dart';

class userProfile extends StatelessWidget{
  final String name;
  final String subTitle;
  final String imagePath;
  final String contact;
  final String jobDescription;

  userProfile({
    super.key,
    required this.name,
    required this.subTitle,
    required this.imagePath,
    required this.contact,
    required this.jobDescription
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(name,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 3
                ),
              ),
              Text(subTitle,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 3
                ),),
              
              //MyText.sectionText("subTitle", textColor: Colors.grey)
              //MyText.titleText(name),
              SizedBox(height: 30,),
              Text("About me",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
              SizedBox(height: 30,),
              Container(
                height: 200,
                width: double.maxFinite,
                //color: Colors.white54,
                child: MyText.bodyText(jobDescription, textColor: Colors.deepOrangeAccent,size: 22,),
              ),
              Expanded(
                child: Row(
                  children: [
                    MyText.sectionText("Contact to Hire!",size: 18,),
                    SizedBox(width: 5,),
                    Icon(Icons.mail_outline,color: Colors.deepOrange,),
                    MyText.sectionText(contact,size: 18,)
                  ],
                ),
              )
          
            ],
          ),
        ),

      ),
    );
  }


}