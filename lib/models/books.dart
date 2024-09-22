// import 'dart:math';
class Books {
  static final items = [
    Item(
        id: 001,
        name: "demo_book1",
        desc: "this is a book.",
        price: 500,
        credit: 5,
        image:
            "https://exponentwptheme.com/book/wp-content/uploads/sites/26/2019/02/book-mockup-exponent-min.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final num credit;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.credit,
      required this.image});
}
