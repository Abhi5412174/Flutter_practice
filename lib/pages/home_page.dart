import 'package:flutter/material.dart';
import 'package:practice_app/models/books.dart';
import 'package:practice_app/widgets/drawer.dart';
import 'package:practice_app/widgets/item_widget.dart';

class MyHomePage extends StatelessWidget {
  int days = 1;
  String name = "Abhishek";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Swap"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Books.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: Books.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
