import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:practice_app/models/books.dart';
import 'package:practice_app/widgets/drawer.dart';
import 'package:practice_app/widgets/item_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final bookJson = await rootBundle.loadString("assets/files/books.json");
    final decodedData = jsonDecode(bookJson);
    var productsData = decodedData["products"];
  }

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
