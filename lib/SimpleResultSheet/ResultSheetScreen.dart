import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class ResultSheetScreen extends StatefulWidget {
  const ResultSheetScreen({super.key});

  @override
  State<ResultSheetScreen> createState() => _ResultSheetState();
}

class _ResultSheetState extends State<ResultSheetScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController subjectNameController = TextEditingController();
  final TextEditingController scoreController = TextEditingController();

   String rslt = " " ;

  void ResultCalculate(){
    if(formKey.currentState!.validate()){
      int score = int.parse(scoreController.text);
      String subName = subjectNameController.text;
      String grade;
      if(score > 80){
        grade = "A+";
      }
      else if(score>70){
        grade = "A";
      }
      else if(score>60){
        grade = "A-";
      }
      else if(score>50){
        grade = "B";
      }
      else if(score>40){
        grade = "C";
      }
      else if(score>33){
        grade = "D";
      }
      else{
        grade = "Fail";
      }
      setState(() {
        rslt = "$grade";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          toolbarHeight: 80,
          title: Text(
            "Result Sheet App",
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          leading: IconButton(
              hoverColor: Colors.amber,
              iconSize: 40,
              onPressed: (){},
              icon: Icon(Icons.menu,color: Colors.white)
          ),
          actions: [
            IconButton(
                iconSize: 40,
                hoverColor: Colors.amber,
                onPressed: (){},
                icon: Icon(Icons.search_sharp,color: Colors.white))
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Result Sheet",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800
                )),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      "Subject Name:",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextFormField(
                      controller: subjectNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          //hintText: "Enter your Subject Name here",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                        hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                      ),
                      validator: (value) =>
                        value!.isEmpty ? "Enter your subject name" : null

                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Obtained Score:",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextFormField(
                      controller: scoreController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        //hintText: "Enter your Score here",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)
                        ),
                        hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                      ),
                      validator: (value) =>
                      value!.isEmpty ? "Enter your Score" : null
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                      ResultCalculate();
                      //print("$rslt");
                  }, 
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "GPA",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.redAccent,
                        //backgroundColor: Colors.lime[200]
                      )
                    ),
                  )),
              SizedBox(height: 20,),
              Text("Generate Result"),
              SizedBox(height: 20,),
              //Text(rslt)

            ],
          ),
        ) ,
        bottomNavigationBar: NavigationButton(),
      ),
    );
  }
}
