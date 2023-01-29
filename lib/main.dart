// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Settings.dart';
import 'editInfo_SP.dart';
import 'editInfo_MU.dart';
import 'ViewAccount_MU.dart';
import 'ViewAccount_SP.dart';
import 'HelpPage.dart';
import 'RegectCar.dart';
import 'TrackDelivery_SP.dart';
import 'OrdersData.dart';
import 'ViewOrders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Regect(),
    );
  }
}
