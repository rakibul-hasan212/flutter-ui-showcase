import 'package:flutter/material.dart';
import '../customWidgets/MyText.dart';
import 'custom_widgets.dart';

class ResultSheetScreen extends StatefulWidget {
  const ResultSheetScreen({super.key});

  @override
  State<ResultSheetScreen> createState() => _ResultSheetState();
}

class _ResultSheetState extends State<ResultSheetScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
        rslt = grade;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        resizeToAvoidBottomInset: false,
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText.titleText("Result Sheet"),
                SizedBox(height: 30,),
                Form(
                  key: formKey,
                   child: Column(
                     children: [
                       TextFormField(
                           controller: subjectNameController,
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                             label: MyText.sectionText("Subject Name"),
                             hintText: "Enter your Subject Name here",
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(16)
                             ),
                             hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                           ),
                           validator: (value) =>
                           value!.isEmpty ? "Subject Name is required" : null
                       ),
                       SizedBox(height: 20,),
                       TextFormField(
                           controller: scoreController,
                           keyboardType: TextInputType.number,
                           decoration: InputDecoration(
                             label: MyText.sectionText("Obtain Score"),
                             hintText: "Enter your Score here",
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(16)
                             ),
                             hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                           ),
                           validator: (value) =>
                           value!.isEmpty ? "Score is required": null
                       )
                     ],
                   ),
                ),

                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                        ResultCalculate();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MyText.buttonText("GPA",size: 18,fontWeightValue: FontWeight.w700,textColor: Colors.red.shade300)
                    )),
                SizedBox(height: 20,),
                MyText.sectionText("Generate Result"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText.captionText("You Obtain in" + " ${subjectNameController.text} => ",size: 24,textColor: Colors.red.shade300),
                    MyText.captionText(rslt,size: 24,textColor: Colors.red.shade600)
                  ],
                )


              ],
            ),
          ),
        ) ,
        bottomNavigationBar: NavigationButton(),
      ),
    );
  }
}
