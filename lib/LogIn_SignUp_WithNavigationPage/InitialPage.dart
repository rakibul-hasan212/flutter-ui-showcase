import 'package:counting/LogIn_SignUp_WithNavigationPage/Pages/HomePage.dart';
import 'package:counting/LogIn_SignUp_WithNavigationPage/Pages/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'Pages/LogInPage.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
            ),
      ),
      // home: SignUpPage(),
        home: LogInPage(),
        //home: HomePage(),
    );
  }

}