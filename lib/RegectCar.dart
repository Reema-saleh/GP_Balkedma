// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Regect extends StatelessWidget {
  const Regect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black) ,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzB0JclxHhto76WHFWYNBoqs785MCJHadtkg&usqp=CAU",
          cacheHeight: 150,cacheWidth: 150),
          const SizedBox(height: 10,),
          const Text("Sorry",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)), 
          const Text("Your car has not been added", style: TextStyle(fontSize:15),),
           const SizedBox(height: 10,),
           ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: const Text("Close")),    ],
      ),
    ),);
  }
}
