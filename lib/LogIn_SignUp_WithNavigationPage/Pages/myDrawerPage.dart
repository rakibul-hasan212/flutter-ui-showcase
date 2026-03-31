import 'package:flutter/material.dart';

class myDrawerPage extends StatelessWidget{
  myDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
                
                  accountName: Text("Md. Rakibul hasan"),
                  accountEmail: Text("rakibulhasan212002013@gamil.com"),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    //image:
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/rakib.jpeg"),
                  ),
                currentAccountPictureSize: Size.fromRadius(25),
              )
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Clicked on Home")
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Clicked on Profile")
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contact"),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Clicked on Contact")
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_sharp),
            title: Text("Setting"),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Clicked on Setting")
                  )
              );
            },
          )
        ]
      ),
    );
  }

}