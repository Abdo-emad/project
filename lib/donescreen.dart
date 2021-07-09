import 'package:flutter/cupertino.dart';
//import 'package:sqflite/sqflite.dart';

class DoneScreen extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Done Screen",
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ));
  }
}
  // create DatBase
/*
  void createDatBase() async {
    var datbase =
        await openDatabase('toddb', version: 1, onCreate: (database, version) {
      print("crated");
      database.execute('').catchError(() {});
    }, onOpen: (database) {});
  }*/

