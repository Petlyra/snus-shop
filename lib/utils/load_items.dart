import 'package:flutter/material.dart';
import 'package:snus_shop/body/components/item_container.dart';
import 'package:snus_shop/body/components/item_row.dart';

final items = [
  ItemRow(
    items: [
      ItemContainer(
          child: Image.asset(
        "assets/Vika.jpg",
      )),
      ItemContainer(
          child: Image.asset(
        "assets/G4.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          child: Image.asset(
        "assets/Shiro.jpg",
      )),
      ItemContainer(
          child: Image.asset(
        "assets/Siberia.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          child: Image.asset(
        "assets/Odens.jpg",
      )),
      ItemContainer(
          child: Image.asset(
        "assets/Baron.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          child: Image.asset(
        "assets/LYFT.jpg",
      )),
      ItemContainer(
          child: Image.asset(
        "assets/Thunder.jpg",
      )),
    ],
  )
];

int getCountOfItems() => items.length;

// class Items extends StatelessWidget {
//   const Items({Key? key}) : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(mainAxisAlignment: MainAxisAlignment.start, children: items);
//   }
// }
