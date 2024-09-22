import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  int days = 1;
  String name = "Abhishek";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Swap"),
      ),
      body: Center(
        child: Container(
            child: Text(
          "Hi, Welcome to my first app! day: $days $name v1: 5",
          style: const TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        )),
      ),
      drawer: const Drawer(),
    );
  }
}
