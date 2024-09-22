import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1726876800&semt=ais_hybrid";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: const Text("User_1"),
              accountEmail: const Text("demo@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.book),
            title: Text(
              "Books",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.book_solid),
            title: Text(
              "Add Books",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
