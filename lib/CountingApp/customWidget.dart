
import 'package:flutter/material.dart';
Widget NavigationButton() {
  //bottomNavigationBar:
  return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      backgroundColor: Colors.blueGrey[300],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.green[100],
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_phone),
          label: "Contact",
        )
      ]);
}