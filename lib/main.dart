import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyAwesomeApp")),
      body: Center(
          child: Container(
        color: Colors.cyanAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              alignment: Alignment.center,
            ),
          ],
        ),
      )),
    );
  }
}
