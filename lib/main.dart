import 'package:flutter/material.dart';
import 'package:ride_pay/screens/landing_Page.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ride Pay',
    home: HomeClass(
    ),
  ));
}

class HomeClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blueAccent), home: LandingPage()
    );
  }
}