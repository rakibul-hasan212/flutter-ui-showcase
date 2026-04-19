import 'package:counting/Note%20Book/providers/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'pages/land page/land_page.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (_)=> NoteProvider(),
    child: MyApp(),));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context,provider,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: landPage(),

        );
      }
    );
  }

}