import 'package:counting/User_List/models/model_user.dart';
import 'package:counting/User_List/models/model_user_list.dart';
import 'package:counting/User_List/pages/user_profile.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Convert the Json to List Object
    final List<User> users = userInfoJson.map((e) => User.fromJson(e)).toList();
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            toolbarHeight: 80,
            toolbarOpacity: 0.7,
            leading: IconButton(
                onPressed: (){},
                icon: Icon(Icons.menu_rounded)),
            title: Text("User List",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search))
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return Card(
                    shape: Border.all(width: 1, color: Colors.black),
                    color: Colors.lime[200],
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                    child: ListTile(
                        tileColor: Colors.orange[50],
                        hoverColor: Colors.orange,
                        iconColor: Colors.black,
                        selectedTileColor: Colors.deepOrangeAccent,
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.greenAccent,
                          backgroundImage: AssetImage(user.userProfileImage),
                        ),
                        title: Text(
                          user.userName,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          user.userProffession,
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => userProfile(
                                      name: user.userName,
                                      subTitle: user.userProffession,
                                      imagePath: user.userProfileImage,
                                      contact: user.userContact,
                                      jobDescription: user.professionDescription,)));
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "${user.userName} Traling Icon is Clicked")));
                            },
                            icon: Icon(Icons.add_circle))),
                  );
                }),
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.redAccent,
              iconSize: 20,
              items: [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.home_outlined))),
                BottomNavigationBarItem(
                    label: "Search",
                    icon: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
                BottomNavigationBarItem(
                  label: "Setting",
                  icon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.settings_sharp)),
                )
              ])),
    );
  }
}

