import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.nameText,
    required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final String nameText;
  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/featuredimage.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            nameText,
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Full Name",
                  border: OutlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}
