import 'package:counting/CountingApp/Get%20Controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'customWidget.dart';
import 'package:get/get.dart';

class CountingScreen extends StatefulWidget {
  const CountingScreen({super.key});

  @override
  State<CountingScreen> createState() => _CountingState();
}

class _CountingState extends State<CountingScreen> {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          toolbarHeight: 80,
          title: Text(
            "Counting App",
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          leading: IconButton(
              hoverColor: Colors.amber,
              iconSize: 40,
              onPressed: (){},
              icon: Icon(Icons.menu,color: Colors.white)
          ),
          actions: [
            IconButton(
                iconSize: 40,
                hoverColor: Colors.amber,
                onPressed: (){},
                icon: Icon(Icons.search_sharp,color: Colors.white))
          ],
        ),

        body: Center(
          child: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2),
              color: Colors.lime[100]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Press the button to showing Counting",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                SizedBox(
                  height: 10,
                ),
                Obx((){
                  return Text("Show the Counting Result: ${controller.count.toString()}",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20,color: Colors.red[300]));
                }),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.Increment();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Increment",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.Decrement();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Decrement",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.Clear();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Clear",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationButton(),
      ),
    );
  }
}
