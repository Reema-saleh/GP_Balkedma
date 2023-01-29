// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';

class editInfo_SP extends StatelessWidget {
  const editInfo_SP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Edit Information"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("assets/userAvatar.png"),
                radius: 40,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                initialValue: "Sara",
                decoration: const InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(color: Colors.grey)),
                    ),
                    ),
              ),
              const SizedBox(height: 3),
              TextFormField(
                initialValue: "Muhammed",
                decoration: const InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(color: Colors.grey)),
                    )),
              ),
              const SizedBox(height: 3),
              TextFormField(
                initialValue: "Sara2345@gmail.com",
                decoration: const InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(color: Colors.grey)),
                    )),
              ),
              const SizedBox(height: 3),
              TextFormField(
                initialValue: "0112398766",
                decoration: const InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(color: Colors.grey)),
                    )),
              ),
              const SizedBox(height: 3),
              TextFormField(
                initialValue: "11165447976",
                decoration: const InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(color: Colors.grey)),
                    )),
              ),
              const SizedBox(height: 3),
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
                  onPressed: (() {}),
                  child: const Text("        Edit        ")),
            ],
          )
        ],
      ),
      //body: ,
    );
  }
}
