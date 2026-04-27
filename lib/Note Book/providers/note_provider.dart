import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting/Note%20Book/models/noteModel.dart';
import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier{
  final dbRef = FirebaseFirestore.instance.collection("Notes");
  List<NoteModel> notes = [];

  void addNotes(NoteModel note){
    notes.add(note);
    notifyListeners();
  }

  void setFavourite(NoteModel note){
    note.isFavourite = !note.isFavourite;
    notifyListeners();
  }

  void deleteNote(NoteModel note){
    notes.remove(note);
    notifyListeners();
  }

  void updateNote(NoteModel note, String title, String description){
    note.title = title;
    note.description = description;
    notifyListeners();
  }

  addFirebaseNote(NoteModel note) async{
    
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    await dbRef.doc(id).set({
      'id': id,
      'title': note.title,
      'description': note.description,
    });
    notifyListeners();
  }



}