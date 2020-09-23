import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
              width: 10,
              style: BorderStyle.solid,
            ),
            //borderRadius: new BorderRadius.all(new Radius.circular(20)),
            shape:BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: new Offset(10, 5),
                blurRadius: 10,
              ),
            ],
            color: Colors.red[100 * ((index + 1) % 8)],
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/icon.png"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          margin: EdgeInsets.all(20),
          //color: Colors.teal[100 * ((index+1) % 8)],
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("Merhaba Flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
        );
      },
    );
  }
}

/*
*  GridView.extent(
      //reverse: true,
      maxCrossAxisExtent: 500,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 1",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 2",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 3",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 4",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 5",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 6",textAlign: TextAlign.center,),
        ),
      ],
    );
* */

/*
* GridView.count(
      crossAxisCount: 2,
      reverse: true,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 1",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 2",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 3",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 4",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 5",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 6",textAlign: TextAlign.center,),
        ),
      ],
    );
*
* */
