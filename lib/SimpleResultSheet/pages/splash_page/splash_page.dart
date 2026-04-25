import 'dart:async';

import 'package:counting/SimpleResultSheet/pages/home/ResultSheetScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../customWidgets/MyText.dart';
import '../login_page/login_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {

  static const String KEYLOGIN = "isLogin";
  @override
  void initState() {
    super.initState();
    whereTogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MyText.titleText("Result Sheet")],
        ),
      ),
    );
  }

  void whereTogo() async{
    var pref = await SharedPreferences.getInstance();
    var isLogged= pref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 2), () {
      if(isLogged != null){
        isLogged ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> ResultSheetScreen())) : Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> LoginPage()));
      }else{
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LoginPage()));
      }
    });

  }
}
