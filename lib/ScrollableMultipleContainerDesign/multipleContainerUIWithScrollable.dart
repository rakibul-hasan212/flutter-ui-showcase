import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Multiple Container with Scrollable'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(//using for column scrolling
            child: Column(
              children: [
                Padding(//using for padding between children
                  padding: EdgeInsets.only(bottom: 10),
                  child: SingleChildScrollView(//using for row scrolling
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.yellow,
                          // child: Center(
                          //     child: Text("Container 1",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                          // ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.green,
                          // child: Center(
                          //     child: Text("Container 1",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                          // ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                          // child: Center(
                          //     child: Text("Container 1",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                          // ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.deepOrangeAccent,
                          // child: Center(
                          //     child: Text("Container 1",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                          // ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.pinkAccent,
                          // child: Center(
                          //     child: Text("Container 1",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.greenAccent,
                  // child: Center(
                  //     child: Text("Container 2",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.deepOrangeAccent,
                  // child: Center(
                  //     child: Text("Container 3",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w800))
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.brown,
                  //child: Text("Container 4")
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.blueGrey,
                  //child: Text("Container 4")
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.lime,
                  //child: Text("Container 4")
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.cyan,
                  //child: Text("Container 4")
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.pinkAccent,
                  //child: Text("Container 4")
                ),
              ],
            ),
          ),
        )
    );
  }
}
