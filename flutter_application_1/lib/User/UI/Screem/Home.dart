import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Screem/Profile.dart';
//import 'package:flutter_application_1/User/UI/Widget/CardLog.dart';


class Home extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children: [
           //CardLog()
            Profile()
         ],
      ),
    );
  }
}