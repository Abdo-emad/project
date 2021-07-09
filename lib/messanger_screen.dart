import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(""),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Chats",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          )
        ]),
        actions: [
          IconButton(
            icon: CircleAvatar(child: Icon(Icons.camera_alt)),
            onPressed: () {},
          ),
          IconButton(
              icon: CircleAvatar(child: Icon(Icons.edit)), onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.grey[200]),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              SizedBox(width: 15),
              Text("Search"),
            ],
          ),
        ),
      ),
    );
  }
}
