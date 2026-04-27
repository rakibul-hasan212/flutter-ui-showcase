import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting/Note%20Book/models/noteModel.dart';
import 'package:counting/Note%20Book/providers/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNotesPage extends StatefulWidget{
  AddNotesPage({super.key});

  @override
  State<AddNotesPage> createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  
  TextEditingController title = TextEditingController();
  TextEditingController descrp = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();
  // final dbRef = FirebaseFirestore.instance.collection("Notes");

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Notes"),
          centerTitle: true,
          toolbarHeight: screenHeight * .09,
        ),
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: title,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "Write the Title here",
                    focusColor: Colors.green,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04,),
                TextFormField(
                  controller: descrp,
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "Write the description",
                    focusColor: Colors.green,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04,),
                Consumer<NoteProvider>(
                  builder: (context,provider,child) {
                    return ElevatedButton(
                        onPressed: () async{
                          if(_formkey.currentState!.validate()){
                            //for adding data to firebase
                            // String id = DateTime.now().millisecondsSinceEpoch.toString();
                            // await dbRef.doc(id).set({
                            //   'id': id,
                            //   'title': title.text,
                            //   'description': descrp.text,
                            // });
                            await provider.addFirebaseNote(NoteModel(title: title.text, description: descrp.text));

                            //for adding data to modelNotes using provider
                             provider.addNotes(NoteModel(title: title.text, description: descrp.text));

                            //after adding data poping the page
                            Navigator.pop(context);
                          }
                        },
                        child: Text("Save",style: TextStyle(fontWeight: FontWeight.w800),));
                  }
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}