import 'package:flutter/material.dart';
import 'package:learn_flutter/card.dart';
import 'package:learn_flutter/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameText = "Your Nice Name";
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("MyAwesomeApp")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: MyCard(
              nameText: nameText,
              textEditingController: _textEditingController),
        ),
      )),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nameText = _textEditingController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
