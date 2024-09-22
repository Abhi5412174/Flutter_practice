import 'package:flutter/material.dart';
import 'package:practice_app/models/books.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  // : assert(item != null),
  //   super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(
          "Demo_Book1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("This is description. \Rs.${item.price}"),
        trailing: Text(
          "\¢${item.credit}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
    );
  }
}
