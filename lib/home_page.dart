import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  int days = 1;
  String name = "Abhishek";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Swap"),
      ),
      body: Center(
        child: Container(
          child: Text("Hi, Welcome to my first app! day: $days $name v1: 1"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
