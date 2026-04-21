import 'dart:async';
import 'package:counting/Note%20Book/models/noteModel.dart';
import 'package:counting/Note%20Book/providers/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../Add Notes/add_notes.dart';

class landPage extends StatefulWidget{
  landPage({super.key});

  @override
  State<landPage> createState() => _landPageState();
}

class _landPageState extends State<landPage> {
  late Timer _timer;
  String currentTime = " ";
  @override
  void initState() {
    super.initState();
    _updateTime(); // first time
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
  });
  }
  void _updateTime(){
    final now = DateTime.now();
    final formatted = DateFormat('hh:mm:ss a').format(now);

    setState(() {
      currentTime = formatted;
    });
  }
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.4),
        title: Text("Note Item"),
        centerTitle: true,
        toolbarHeight: screenHeight * 0.09,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentTime),
            Consumer<NoteProvider>(
                builder: (context,provider, child) {
                  return Expanded(
                    child: ListView(
                      children: [
                        for(NoteModel noteItem in provider.notes)
                          Card(
                            child: ListTile(
                              title: Text(noteItem.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenWidth * 0.035),),
                              subtitle: Text(noteItem.description,style: TextStyle(fontWeight: FontWeight.w600,fontSize: screenWidth * 0.02)),
                              trailing: IconButton(
                                  onPressed: (){
                                    provider.setFavourite(noteItem);
                                  },
                                  icon: Icon(
                                      noteItem.isFavourite ? Icons.favorite : Icons.favorite_border_outlined,
                                      color: noteItem.isFavourite ? Colors.red : Colors.grey)
                              ),
                            ),
                          )
                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> AddNotesPage()));
          }, child: Icon(Icons.add),),
    );
  }
}