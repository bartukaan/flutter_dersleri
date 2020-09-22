import 'package:flutter/material.dart';
import 'package:flutter_dersleri/ui/liste_dersleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Dersleri",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListeKonuAnlatimi(),
    ),
  ));
}
