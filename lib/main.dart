import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
    home: new Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB tıklandı");
        },
        //backgroundColor: Colors.green,
        child: Icon(
          Icons.access_alarms,
          color: Colors.white,
          //size: 48,
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        color: Colors.red,
        child: Row(
          //child: Column(
          mainAxisSize: MainAxisSize.max,
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.yellow,
                ),
                color: Colors.blue.shade200,
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.yellow,
                ),
                color: Colors.green.shade200,
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.yellow,
                ),
                color: Colors.purple.shade200,
              ),
              flex: 4,
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.yellow,
                ),
                color: Colors.orange.shade200,
              ),
              flex: 6,
            ),
          ],
        ),
      ),
    ),
  ));
}
