import 'package:counting/CountingApp/Get%20Controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'customWidget.dart';
import 'package:get/get.dart';

class CountingScreen extends StatelessWidget {
  CountingScreen({super.key});

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          toolbarHeight: screenHeight * 0.09,
          title: Text(
            "Counting App",
            style: TextStyle(
                fontSize: screenHeight * 0.06,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          leading: IconButton(
              hoverColor: Colors.amber,
              iconSize: screenHeight * 0.06,
              onPressed: (){},
              icon: Icon(Icons.menu,color: Colors.white)
          ),
          actions: [
            IconButton(
                iconSize: screenHeight * 0.06,
                hoverColor: Colors.amber,
                onPressed: (){},
                icon: Icon(Icons.search_sharp,color: Colors.white))
          ],
        ),

        body: Center(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Container(
              height: screenHeight * 0.8,
              width: screenWidth * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: screenWidth * 0.001),
                color: Colors.lime[100]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Press the button to showing Counting",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: screenHeight * 0.025)),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Obx((){
                    return Text("Show the Counting Result: ${controller.count.toString()}",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: screenHeight * 0.03,color: Colors.red[300]));
                  }),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.Increment();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Text(
                          "Increment",
                          style: TextStyle(fontSize: screenHeight * 0.03, fontWeight: FontWeight.w800),
                        ),
                      )),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.Decrement();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Text(
                          "Decrement",
                          style: TextStyle(fontSize: screenHeight * 0.03, fontWeight: FontWeight.w800),
                        ),
                      )),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.Clear();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Text(
                          "Clear",
                          style: TextStyle(fontSize: screenHeight * 0.03, fontWeight: FontWeight.w800),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: NavigationButton(),
      ),
    );
  }
}
