
import 'package:counting/profileUI/Pages/Form/custom_form.dart';
import 'package:flutter/material.dart';

import '../home/HomePage.dart';
import '../signup/SignUpPage.dart';



class LogInPage extends StatefulWidget{
   LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lime[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0,left: 10,right: 10),
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(image: AssetImage("assets/images/login (1).png"),
                          fit: BoxFit.cover)
                    ),
                    // child: CircleAvatar(
                    //   radius: 80,
                    //   //backgroundColor: Colors.blue,
                    //   backgroundImage: AssetImage("assets/images/signup.png"),
                    // ),

                    //child: Image.asset("assets/images/flutter_icon.png"),
                  ),
                  Text(
                    "Welcome to Our Platform!!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "You can login to the platform through \nyour registered Email and Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 30,),
                  CustomForm(),
                  SizedBox(height:5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have any account?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16)
                      ),
                      // SizedBox(width:3,),
                      TextButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Reach the Sign up page successfully")));
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18)))
                    ],
                  )

                ],

              ),
            ),
          ),
        ),
      ),

    );
  }
}