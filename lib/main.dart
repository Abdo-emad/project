import 'package:flutter/material.dart';

//import 'package:/login_page.dart';
//import 'package:section1/messanger_screen.dart';
import 'package:section1/todo_screen.dart';
//import 'package:section1/todo_screen.dart';

//import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
