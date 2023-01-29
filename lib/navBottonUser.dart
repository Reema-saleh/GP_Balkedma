// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'ViewAccount_MU.dart';
//import 'ViewAccount_SP.dart';
import 'Settings.dart';

class navBottonUser extends StatefulWidget {
  const navBottonUser({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => navBottonUserState();
}

@override
class navBottonUserState extends State<navBottonUser> {
  // ignore: non_constant_identifier_names
  int selected_index = 0;
  List<Widget> pages = <Widget>[
    const ViewAccount_MU(),
    //const ViewAccount_SP(),
    const settings(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: (value) {
          setState(() {
            selected_index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            // index = 0
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            // index = 1
            icon: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage(
                  'assets/Car.png'), // عشان يحط الباك قراوند صوره فاقدر اخذها من الداتا بيس
            ),
            label: "My account",
          ),
          BottomNavigationBarItem(
            // index = 2
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selected_index = index;
      //MaterialPageRoute(builder: (context) => pages[selected_index]);
    });
  }
}
