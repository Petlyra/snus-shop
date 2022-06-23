import 'package:flutter/material.dart';
import 'package:snus_shop/body/components/item_container.dart';
import 'package:snus_shop/body/components/item_row.dart';

final items = [
  ItemRow(
    items: [
      ItemContainer(
        image: Image.asset(
          "assets/Vika.jpg",
        ),
        name: "Vika Deep Blue",
      ),
      ItemContainer(
        image: Image.asset(
          "assets/G4.jpg",
        ),
        name: "G4",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        image: Image.asset(
          "assets/Shiro.jpg",
        ),
        name: "Shiro",
      ),
      ItemContainer(
        image: Image.asset(
          "assets/Siberia.jpg",
        ),
        name: "Siberia Red",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        image: Image.asset(
          "assets/Odens.jpg",
        ),
        name: "Odens",
      ),
      ItemContainer(
        image: Image.asset(
          "assets/Baron.jpg",
        ),
        name: "Baron Classic",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        image: Image.asset(
          "assets/LYFT.jpg",
        ),
        name: "LYFT Freeze X-Strong",
      ),
      ItemContainer(
        image: Image.asset(
          "assets/Thunder.jpg",
        ),
        name: "Thunder X",
      ),
    ],
  )
];

int getCountOfItems() => items.length;
