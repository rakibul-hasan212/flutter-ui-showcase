import 'package:counting/ContactInfo/pages/homepage.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
   bool ischecked = false;
    CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form( 
                child: Column(
                    children: [
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
                    ],
                  )
                  );
  }
}