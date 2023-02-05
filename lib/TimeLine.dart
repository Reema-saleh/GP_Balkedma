// ignore: file_names
import 'package:flutter/material.dart';

class AppTimeline extends StatelessWidget {
  const AppTimeline({
    super.key,
    this.color = Colors.white,
    required this.title,
    required this.subTitle,
    required this.date,
  });

  final Color color;
  final String title;
  final String subTitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Column(
            children: [
              // * Circle
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              // * Line
              Container(
                width: 3,
                height: 70,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(width: 10),
          // * title & subTitle & date
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // * Title
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      // * SubTitle
                      const SizedBox(height: 8),
                      Text(
                        subTitle,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                //  * date
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}