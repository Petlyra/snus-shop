import 'package:flutter/material.dart';
import 'package:snus_shop/body/components/item_container.dart';
import 'package:snus_shop/body/components/item_row.dart';

final items = [
  ItemRow(
    items: [
      ItemContainer(
          image: Image.asset(
        "assets/Vika.jpg",
      )),
      ItemContainer(
          image: Image.asset(
        "assets/G4.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          image: Image.asset(
        "assets/Shiro.jpg",
      )),
      ItemContainer(
          image: Image.asset(
        "assets/Siberia.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          image: Image.asset(
        "assets/Odens.jpg",
      )),
      ItemContainer(
          image: Image.asset(
        "assets/Baron.jpg",
      )),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
          image: Image.asset(
        "assets/LYFT.jpg",
      )),
      ItemContainer(
          image: Image.asset(
        "assets/Thunder.jpg",
      )),
    ],
  )
];

int getCountOfItems() => items.length;
