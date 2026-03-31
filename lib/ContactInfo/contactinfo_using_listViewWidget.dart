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
      home: const MyHomePage(title: 'List View'),
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
  @override
  Widget build(BuildContext context) {
    var names = [
      "Rakib",
      'Hasan',
      'Sajol',
      'Rana',
      'Sakib',
      'Bokkor',
      'Sabbir',
      "Rakib",
      'Hasan',
      'Sajol',
      'Rana',
      'Sakib',
      'Bokkor',
      'Sabbir'
    ];
    var subTle = [
      "Student",
      "Software Developer",
      "Flutter Developer",
      "Programmer",
      "Junior Developer",
      "Senior Developer",
      "Student",
      "Student",
      "Software Developer",
      "Flutter Developer",
      "Programmer",
      "Junior Developer",
      "Senior Developer",
      "Student"
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              //using listTile widget
              leading: Text('Icon: ${index + 1}'),
              title: Text(names[index]),
              subtitle: Text(subTle[index]),
              trailing: Icon(Icons.add_call),
            );
          },
          itemCount: names.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 2,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //MySanckBar(("This is floating button"), context);
          },
          backgroundColor: Colors.amber,
        ),

        //how to make bottom Navigation bar and needed properties
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          // which one is currently active navigation bar(0 means frist)
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (int index) {
            //Action perform when tap this Manu
            if (index == 0) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("data"),
              ));
            } else if (index == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Hello Snackbar"),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Hello Snackbar"),
                ),
              );
            }
          },
        )
    );
  }
}
