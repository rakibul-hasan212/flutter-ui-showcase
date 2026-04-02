
import 'package:flutter/material.dart';
import '../customWidgets/MyText.dart';
import 'MyToDoTile.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget{

  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  void onChanged(int index){
    setState(() {
      toDoInfo[index][0] = !toDoInfo[index][0];
    });
  }

  List toDoInfo = [
    [false,"Study about the Container Widget"],
    [false,"Study about the Column Widget"],
    [false,"Study about the Row Widget"],
    [false,"Study about the ListView Widget"],
    [false,"Study about the GridView Widget"],
    [false,"Study about the SingleChildScrolView Widget"],
    [false,"Study about the Padding Widget"],
    [false,"Study about the Center Widget"],
    [false,"Study about the Button Widget"],
    [false,"Study about the Form Widget"]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: MyText.titleText("ToDo App"),
            centerTitle: true,
            toolbarHeight: 80,
          ),
          body: ListView.builder(
              itemCount: toDoInfo.length,
              itemBuilder: (context , index){
                return MyToDoTile(
                    value: toDoInfo[index][0],
                    onChanged:(p0){
                      onChanged(index);
                    },
                  todotext: toDoInfo[index][1]
                );
              })
    )
    );
  }
}