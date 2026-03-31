import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "ListView and GridView UI",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "My Activity of Day",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              subtitle: Text(
                "Lists",
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.search, size: 28)),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1),
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.white,
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Calendar",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text("March,Wednesday",style: TextStyle(fontSize:20,color:Colors.grey)),
                              SizedBox(height: 20,),
                              Text("3 Events",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.local_grocery_store,
                                color: Colors.deepOrangeAccent,
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Groceries",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text("Bocali,Apple",style: TextStyle(fontSize:20,color:Colors.grey),),
                              SizedBox(height: 20,),
                              Text("5 Items",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Colors.red,
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Locations",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text("Going to office",style: TextStyle(fontSize:20,color:Colors.grey),),
                              SizedBox(height: 20,),
                              Text(" ",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.local_activity_sharp,
                                color: Colors.lightGreenAccent,
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Activity",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text("Facebook Post",style: TextStyle(fontSize:20,color:Colors.grey),),
                              SizedBox(height: 20,),
                              Text(" ",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.list_alt_outlined,
                                color: Colors.green,
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("To Do",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text("Homework, Design",style: TextStyle(fontSize:20,color:Colors.grey),),
                              SizedBox(height: 20,),
                              Text("4 Items",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.settings_rounded,
                                color: Colors.grey[350],
                                size: 60,
                              ),
                              SizedBox(height: 10,),
                              Text("Settings",style: TextStyle(fontSize:25,color:Colors.white)),
                              SizedBox(height: 10,),
                              Text(" ",style: TextStyle(fontSize:20,color:Colors.grey),),
                              SizedBox(height: 20,),
                              Text("3 Items",style: TextStyle(fontSize:20,color:Colors.grey[700])),

                            ],
                          ),
                        ),
                      )
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
