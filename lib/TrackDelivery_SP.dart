// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'TimeLine.dart';

class TrackDelivery extends StatelessWidget {
 const TrackDelivery({
    Key? key,
    required this.price,
    required this.OrderNumber,
    required this.carName,
    required this.carImage,
    required this.delLocation, 
  }) : super(key: key);


   final double price;
  final String OrderNumber;
  final String carName;
  final String carImage;
  final String delLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Track Orders"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            
            Container(
              color: Colors.black,
              height:200,
              width: 400,
              child:  Image(image: AssetImage(carImage))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        'Car',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                      carName,
                      style: const TextStyle(fontSize: 19),
                    ),
                    ],
                  ),
                  // * Total Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        '$price SAR',
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                 
                  // * order Number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        'Order Number:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        // ignore: unnecessary_string_interpolations
                        "$OrderNumber",
                        style: const TextStyle(fontSize: 20),
                      )
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Deliver to',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        delLocation,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  // * line
                  const Divider(color: Colors.grey, thickness: 1),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // * TimeLine
            const AppTimeline(
              title: 'Order confirmed',
              subTitle:
                  'The Car has been Orderd',
              date: 'Aug 12',
              color: Colors.black,
              
              
            ),
            const AppTimeline(
              title: 'Order Arrived',
              subTitle: 'The car is with a client',
              date: 'Aug 15',
              color: Colors.black,
              
            ),
             const AppTimeline(
              title: 'Money transfered',
              subTitle: 'We transferd the money to your bank account',
              date: 'Aug 20',
              color: Colors.black,
             
            ),
            const AppTimeline(
              title: 'Order completed',
              subTitle: 'The client has returned the car',
              date: 'Aug 23',
              
            ),
           
          ],
        ),
      ),
    );
  }
}
