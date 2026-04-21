import 'dart:convert';

class NoteModel {
  String title;
  String description;
  bool isFavourite;

  NoteModel({
    required this.title,
    required this.description,
    this.isFavourite = false
  });
}
