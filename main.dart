import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep',
      theme: ThemeData(
        primaryColor: HexColor('#FD7E77'),
        fontFamily: 'Montserrat',
      ),
      home: Login(),
    );
  }
}

