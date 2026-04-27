import 'package:counting/Note%20Book/providers/note_provider.dart';
import 'package:counting/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'pages/land page/land_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(  //initializing firebase for the project
    options: DefaultFirebaseOptions.currentPlatform,
  );
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