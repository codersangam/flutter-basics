import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
