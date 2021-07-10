import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

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
          child: Card(
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
          ),
        ),
      )),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sangam Singh"),
              accountEmail: Text("hritriik@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/66767187?v=4"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              // subtitle: Text("Edit Account"),
              // trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              // subtitle: Text("Edit Account"),
              //  trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate Us"),
              // subtitle: Text("Edit Account"),
              // trailing: Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
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
