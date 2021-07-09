import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:section1/archivedscreen.dart';
import 'package:section1/donescreen.dart';
import 'package:section1/taskscreen.dart';
import 'package:sqflite/sqflite.dart';

class TodoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoScreenState();
  }
}

class _TodoScreenState extends State<TodoScreen> {
  int currentIndex = 0;
  List<Widget> screens = [TaskScreen(), DoneScreen(), ArchivedScreen()];
  List<String> title = ["Task", "Done", "Archived "];
  Database datbase;
  @override
  void initState() {
    super.initState();
    createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
      ),
      body: screens[currentIndex],
      // backgroundColor: Colors.white10,
      drawer: Scaffold(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "+",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex:
              currentIndex, // started with index 0 between (bottomnavigationbar)
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: "Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline), label: "Done"),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_outlined), label: "Archived"),
          ]),
    );
  }

  void createDataBase() async {
    datbase = await openDatabase(
      'tododb',
      version: 1,
      onCreate: (dataBase, version) {
        print("DataBase Created");
        dataBase
            .execute(
                'CRETE TABLE tasks (id INTEGER PRIMARY KEY , title TEXT ,data TEXT,time TEXT , status TEXT)')
            .then((value) {
          print("Database created");
        }).catchError((error) {
          print("Error Found");
        });
      },
      onOpen: (datbase) {
        print("Database Oened");
      },
    );
  }

  Future<String> insertDataBase() {
    datbase.transaction((txn) {
      return txn
          .rawInsert(
              'INSERT INTO (title, data ,time,sttus) VALUES("FIRST","FIRST","FIRST","FIRST")')
          .then((value) {
        print("INSERTED");
      }).catchError((error) {
        print("error");
      });
    });
    return null;
  }
}
