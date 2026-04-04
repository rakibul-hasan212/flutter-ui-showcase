
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
    // [false,"Study about the Row Widget"],
    // [false,"Study about the ListView Widget"],
    // [false,"Study about the GridView Widget"],
    // [false,"Study about the Stack Widget"],
    // [false,"Study about the Padding Widget"],
    // [false,"Study about the Center Widget"],
    // [false,"Study about the Button Widget"],
    // [false,"Study about the Form Widget"]
  ];
  TextEditingController _Massage = TextEditingController();

  DaitogBoxCreate(){
    showDialog(context: context,
        builder: (context){
          return AlertDialog(
            content: Container(
              height: 150,
              width: 200,
              color: Colors.white,
              child: Column(
                children: [
                  TextFormField(
                    controller: _Massage,
                    decoration: InputDecoration(
                      hintText: "Enter your list message",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black87
                        ),
                        borderRadius: BorderRadius.circular(14)
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            toDoInfo.add([false , _Massage.text.toString()]);
                            _Massage.clear();
                            Navigator.pop(context);

                          });


                        },
                        child: Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(14)
                          ),
                          child: Center(
                              child: Text("Add",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          // setState(() {
                          //   Navigator.pop(context);
                          //   //toDoInfo.add([_toDoMassage.text.toString()]);
                          // });
                        },
                        child: Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Center(
                              child: Text("Cancel",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ],
                  )
                ],
              ),


            ),

          );
        }
        );
  }

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
              }),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                DaitogBoxCreate();
                //Navigator.pop(context);
              },
              child: Icon(Icons.add,size: 40,),
                  
          ),
    )
    );
  }
}