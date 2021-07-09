//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Icon(Icons.menu),
          // centerTitle: true,
          elevation: 50.5, // هامش في الاب بار
          title: Text("First Screen",
              style: TextStyle(
                fontSize: 30,
              )),
          actions: [Icon(Icons.search)],
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: 20,
                margin: EdgeInsets.only(top: 60),
                // padding: EdgeInsets.only(top: 60, bottom: 60),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 40, bottom: 10),
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 25,
                      textDirection: TextDirection.ltr,
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.email,
                      size: 35,
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.cyan,
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ));
  }
}
