// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("About Balkedma"),
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
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "We are an integrated car rental management system that acts as the broker between the main user and the service provider,We offer you multiple service providers to choose from with our rent car service, We provide immediate help for accidents with our car carrier service and provide you with opportunities to Earn more profit by rent your own car service. ",
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24)),
              ),
              SizedBox(height: 10),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
                thickness: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
