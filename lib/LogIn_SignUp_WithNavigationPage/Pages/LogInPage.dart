import 'package:counting/LogIn_SignUp_WithNavigationPage/Pages/SignUpPage.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';



class LogInPage extends StatelessWidget{
   LogInPage({super.key});

  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lime[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 80,
                      //backgroundColor: Colors.blue,
                      backgroundImage: AssetImage("assets/images/flutter_icon.png"),
                    ),

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
                  TextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      label: Text("Email"),
                      hintText: "Enter your email here",
                      prefixIcon: Icon(Icons.email_outlined)
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    controller: TextEditingController(),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)
                        ),
                        label: Text("Password"),
                        hintText: "Enter your password here",
                        prefixIcon: Icon(Icons.lock_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              value: ischecked,
                              onChanged: (value){
                              ischecked = true;
                          }),
                          SizedBox(width: 5,),
                          Text("Remember me?",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 16)),
                        ],
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Text("Forget password!", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 16),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                   SizedBox(
                     height: 100,
                     width: 250,
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: ElevatedButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged in  successfully")));
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Text("Log in",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800,fontSize: 20),)),
                     ),
                   ),
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