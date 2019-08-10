import 'package:flutter/material.dart';

import 'home/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zygote Nike Concept',
      theme: ThemeData(
        backgroundColor: Color(0xFF5228BC),
        primaryColor: Color(0xFF2D1668),
        primaryColorDark: Color(0xFF241153),
        primaryColorLight: Color(0xFF43228B),
        buttonColor: Color(0xFF03FF8E),
        cursorColor: Colors.white,

        textTheme: TextTheme(
            display1: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black),
            headline: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
            title: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
            subhead: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white),
            body2: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500, color: Colors.white),
            body1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.white),
            subtitle: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
            button: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white),
            overline: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.white),
          ),
      ),
      home: Home(),
    );
  }
}