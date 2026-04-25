import 'package:counting/SimpleResultSheet/pages/splash_page/splash_page.dart';
import 'package:counting/customWidgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home/ResultSheetScreen.dart';


class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/man.png')
            ),
            SizedBox(height: 40,),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)
                        )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please fill email";
                      }
                      else if(!value.contains("@gmail.com")){
                        return "Please give the accurate mail";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.lock_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please fill password";
                      }
                      else if(value.length < 6){
                        return "Please give at least 6 digit";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                  if(formKey.currentState!.validate()){
                    var pref = await SharedPreferences.getInstance();
                    pref.setBool(SplashPageState.KEYLOGIN, true);
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ResultSheetScreen()));
                  }
                },
                child: MyText.buttonText("Log in",size:18,))

          ],
        ),
      ),
    );
  }


}