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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Notes"),
          centerTitle: true,
          toolbarHeight: MediaQuery.of(context).size.height * .09,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                Consumer<NoteProvider>(
                  builder: (context,provider,child) {
                    return ElevatedButton(
                        onPressed: (){
                          if(_formkey.currentState!.validate()){
                            provider.addNotes(NoteModel(title: title.text, description: descrp.text));
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