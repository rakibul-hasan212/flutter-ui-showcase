import 'package:flutter/material.dart';

class ToDoMassageAddDeletePerform extends StatelessWidget{

  TextEditingController controllerX;// Access controller text from another page
  VoidCallback onAddMassage;// Access void function to another page

  //Constructor
  ToDoMassageAddDeletePerform({super.key,required this.controllerX, required this.onAddMassage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 150,
        width: 200,
        color: Colors.white,
        child: Column(
          children: [
            TextFormField(
              controller: controllerX,
              decoration: InputDecoration(
                  hintText: "Enter your list message",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black87
                      ),
                      borderRadius: BorderRadius.circular(14)
                  )
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    onAddMassage();
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(
                        child: Text("Add",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);

                    // setState(() {
                    //   Navigator.pop(context);
                    //   //toDoInfo.add([_toDoMassage.text.toString()]);
                    // });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(
                        child: Text("Cancel",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
              ],
            )
          ],
        ),


      ),

    );
  }

}