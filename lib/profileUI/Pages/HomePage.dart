
import 'package:flutter/material.dart';

import 'AboutPage.dart';
import 'HeroSectionPage.dart';
import 'Projects.dart';
import 'QuotesSectionPage.dart';
import 'bottomBarWidget.dart';
import 'myDrawerPage.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lime[200],
      appBar: AppBar(
        //backgroundColor: Colors.grey[100],
        toolbarHeight: 80,
        toolbarOpacity: 0.7,
        title: Text("Protfolio",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroSectionPage(),
              QuotesSectionPage(),
              AboutPage(),
              SizedBox(height: 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Projects Section",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              ),
              ),
              Projects(),
              SizedBox(height: 10,),
              //parent Column elements
            ],
          ),
        ),
      ),

      drawer: myDrawerPage(),
      bottomNavigationBar: NavigationButton(),
    );
  }
}
