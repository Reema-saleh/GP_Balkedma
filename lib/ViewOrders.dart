// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'OrdersData.dart';

class ViewOrders extends StatefulWidget {
  const ViewOrders({super.key});

  @override
  State<ViewOrders> createState() => _ViewOrdersState();
}

class _ViewOrdersState extends State<ViewOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Car Orders"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Ordered",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text("Unordered",
                        style: TextStyle(color: Colors.black))),
              )
            ],
          ),
          const Car(
              price: 650,
              OrderNumber: "18865",
              carName: "Range rover",
              carImage: "assets/Car.png",
              delLocation: "Alhamra",
              ordered: true),
          const Car(
            price: 300,
            OrderNumber: "12353",
            carName: "Hyunday Van",
            carImage: "assets/Car2.jpeg",
            delLocation: "Olya",
            ordered: false,
          )
        ],
      ),
    );
  }
}
