
import 'package:flutter/material.dart';

import 'LogInPage.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passCfrmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lime[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/rakib.jpeg"),
                  onBackgroundImageError: (exception, stackTrace){} ,
                ),
              ),
              Text("Sign Up To The Platform",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
              SizedBox(
                height: 10,
              ),
              Text("Put your correct Email, password and User Name also",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey)),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: userController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: Text("User Name"),
                    hintText: "Enter your valid user Name",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                    prefixIcon: Icon(Icons.supervised_user_circle)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: Text("Email"),
                    hintText: "Enter your valid email address",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: passController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: Text("Password"),
                    hintText: "Type your password",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                    prefixIcon: Icon(Icons.lock_outlined)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: passCfrmController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: Text("Confirm Password"),
                    hintText: "Type the same password again",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                    prefixIcon: Icon(Icons.supervised_user_circle)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign up successfully")));
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => LogInPage()
                      )
                      );

                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
