// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class contactPage extends StatelessWidget {
  const contactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Contact Information"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Image.asset("assets/NUAF.png")],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Number 1: +966588837553", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.grey,
                thickness: 2,
              ),
              SizedBox(height: 10),
              Text("Number 2: +96659773978", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.grey,
                thickness: 2,
              ),
              SizedBox(height: 15),
              Text("Email 1: Balkedma12@gmail.com",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.grey,
                thickness: 2,
              ),
              SizedBox(height: 15),
              Text("Email 2:Balkedma456@gmail.com",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 15),
              Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.grey,
                thickness: 2,
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
