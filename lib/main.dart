import 'package:flutter/material.dart';
import 'package:flutter_calculator/HomePage.dart';


void main(){
  runApp(new MyApp());
}

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: "Calculator app",
        theme: new ThemeData(
          primarySwatch: Colors.yellow
        ),
        home: new HomePage(),
      );
    }
  }
