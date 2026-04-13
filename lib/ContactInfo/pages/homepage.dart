import 'dart:convert';

import 'package:counting/ContactInfo/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/userinfo_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserInfoModel> posts  = [];

  //API calling start
  fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await http.get(url);
    if(response.statusCode==200){
      final jsonData = jsonDecode(response.body);
      final jsonList = jsonData as List;

      setState(() {
        for(var data in jsonList){
          posts.add(UserInfoModel.fromJson(data));
        }
      });
      //print(posts[0].id);
    }
    else{
      print("Error");
    }
  }
  //API calling End
  @override
  void initState() {
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact Info"),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final data = posts[index];
                  return ListTile(
                    //using listTile widget
                    leading: Text(data.id.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    title: Text(data.name),
                    subtitle: Text(data.username),
                    trailing: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(
                              name: data.name,
                              username: data.username,
                              email: data.email,
                              city: data.address.city,
                              zipcode: data.address.zipcode,
                              street: data.address.street,
                              suite: data.address.suite,
                              phoneNo: data.phone,
                              websiteLink: data.website,
                              companyName: data.company.name)));
                        },
                        child: Icon(Icons.add_circle_outline_outlined,size: 25,)),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 20,
                    thickness: 2,
                  );
                },
              ),
            )
          ],
        ),

        //how to make bottom Navigation bar and needed properties
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          // which one is currently active navigation bar(0 means frist)
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (int index) {
            //Action perform when tap this Manu
            if (index == 0) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("home onTaped"),
              ));
            } else if (index == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Message onTaped"),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Profile onTaped"),
                ),
              );
            }
          },
        )
    );
  }
}
