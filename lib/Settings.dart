// ignore_for_file: file_names, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'HelpPage.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children:  [
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.help_rounded),
            title: const Text("Help",style: TextStyle(fontSize: 20)),
            iconColor: Colors.black,
            focusColor: Colors.grey,
            trailing: IconButton(onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const helpPage())));
            }, icon: const Icon(Icons.arrow_right),
            ),
          ),
          const Divider(color: Colors.grey,thickness: 2),

          ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text("About Application",style: TextStyle(fontSize: 20)),
            iconColor: Colors.black,
            focusColor: Colors.grey,
            trailing: IconButton(onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const helpPage())));
            }, icon: const Icon(Icons.arrow_right),
            ),
          ),
          const Divider(color: Colors.grey,thickness: 2),

          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text("Send Feedback",style: TextStyle(fontSize: 20)),
            iconColor: Colors.black,
            focusColor: Colors.grey,
            trailing: IconButton(onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const helpPage())));
            }, icon: const Icon(Icons.arrow_right),
            ),
          ),
          const Divider(color: Colors.grey,thickness: 2),

          const ListTile(
            title: Text("App Version",style: TextStyle(fontSize: 20)),
            iconColor: Colors.black,
            focusColor: Colors.grey,
            trailing: Text("V1",style: TextStyle(fontSize: 20),),
          ),
          const Divider(color: Colors.grey,thickness: 2),
           const SizedBox(height: 40,),
         Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  child: const Text("          Sign Out         "), ),
          ],
         ) 
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        
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
}
