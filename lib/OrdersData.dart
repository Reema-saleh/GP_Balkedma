// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'TrackDelivery_SP.dart';

class Car extends StatelessWidget {
  const Car({
    Key? key,
    required this.price,
    required this.OrderNumber,
    required this.carName,
    required this.carImage,
    required this.delLocation,
    required this.ordered,
  }) : super(key: key);

  final double price;
  final String OrderNumber;
  final String carName;
  final String carImage;
  final String delLocation;
  final bool ordered; // delivery location

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10, top: 20),
      height: 170,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 110,
                    child: Text(
                      carName,
                      style: const TextStyle(fontSize: 19),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 150,
                        child: Text(
                          "$price SAR",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[500]),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        //width: 150,
                        child: Text("Order: $OrderNumber",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 150,
                        child: Text(
                          "To $delLocation",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => TrackDelivery(
                                      price: price,
                                      OrderNumber: OrderNumber,
                                      carName: carName,
                                      carImage: carImage,
                                      delLocation: delLocation))));
                        },
                        child: const Text("Select Order")),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage(carImage),
                    height: 100,
                    width: 120,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

