import 'package:counting/Note%20Book/models/noteModel.dart';
import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier{
  List<NoteModel> notes = [];
  void addNotes(NoteModel note){
    notes.add(note);
    notifyListeners();
  }
}