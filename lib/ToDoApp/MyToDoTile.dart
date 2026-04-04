// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'ToDoMassage.dart';


class MyToDoTile extends StatelessWidget{

  bool value;
  final String todotext;
  VoidCallback onDeleteMassage;
  Function(bool?) onChanged;

  MyToDoTile({super.key,required this.todotext,required this.value, required this.onChanged, required this.onDeleteMassage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 16),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(16),
            shape: BoxShape.rectangle
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              activeColor: Colors.black87,
              checkColor: Colors.white,
              value: value, onChanged: onChanged
            ),
            //const SizedBox(width:10,),
            ToDoMassage(
                text: todotext, size: 19, checker: value),
            SizedBox(width: 6,),

            GestureDetector(
                onTap: (){
                  onDeleteMassage();
                  print("Delete works Perfectly");
                },
                child: Icon(
                  Icons.delete_forever_sharp,
                  size: 22,
                  color: Colors.red)),



          ],
        ),
      ),
    );
  }

}