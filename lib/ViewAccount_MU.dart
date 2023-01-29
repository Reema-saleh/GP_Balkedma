// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'editInfo_MU.dart';
//main user account

// ignore: camel_case_types
class ViewAccount_MU extends StatelessWidget {
  const ViewAccount_MU({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Account"),
        backgroundColor: Colors.black,
      ),
      body: Column(

        children: [
          Row(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: 
                AssetImage("assets/userAvatar.png"),
                radius: 40,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 10),
              Text("Name: Sara Mohammed", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
              
              Text("Email: sara234@gmail", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
            
              Text("Date of birth: 1/2/1999", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
              
              Text("Phone Number:054443355", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
             
              Text("Gender: Female", style: TextStyle(fontSize: 20)),
               SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
             
              Text("ID/Iqama: 112238866", style: TextStyle(fontSize: 20)),
               SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
              
              Text("Expiry date: 6/3/2024", style: TextStyle(fontSize: 20)),
             SizedBox(height:10),
              Divider(
                color: Colors.grey,
                 thickness: 2,
              ),
              Text(" "),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: (() {Navigator.push(context, MaterialPageRoute(builder: ((context) => editInfo_MU())));}),
                  child: const Text("          Edit Information         ")),
            ],
          )
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        
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