import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(title: "My Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}){
    debugPrint("MyhomePage Statefull widget constructor çalıştırıldı");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyhomePage Statefull widget createState çalıştırıldı");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {

  MyHomePageState()
  {
    debugPrint("MyHomePageState State  constructor çalıştırıldı");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build metodu tetkiklendi");
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDegeriniArttir();
            debugPrint("sayac değeri arttırıldı set state çağırıldı");
          });

        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona Basılma Sayısı"),
            Text(
              "${widget.sayac}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArttir() {
    widget.sayac++;
    debugPrint(widget.sayac.toString());
  }
}
