import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/item_container.dart';
import 'package:snus_shop/body/widgets/item_row.dart';

enum ItemsMode { view, edit }

final items = [
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.view,
        image: Image.asset(
          "assets/Vika.jpg",
        ),
        name: "Vika Deep Blue",
      ),
      ItemContainer(
        mode: ItemsMode.view,
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
        mode: ItemsMode.view,
        image: Image.asset(
          "assets/Shiro.jpg",
        ),
        name: "Shiro",
      ),
      ItemContainer(
        mode: ItemsMode.view,
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
        mode: ItemsMode.view,
        image: Image.asset(
          "assets/Odens.jpg",
        ),
        name: "Odens",
      ),
      ItemContainer(
        mode: ItemsMode.view,
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
        mode: ItemsMode.view,
        image: Image.asset(
          "assets/LYFT.jpg",
        ),
        name: "LYFT Freeze X-Strong",
      ),
      ItemContainer(
        mode: ItemsMode.view,
        image: Image.asset(
          "assets/Thunder.jpg",
        ),
        name: "Thunder X",
      ),
    ],
  )
];

final itemsToEdit = [
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.edit,
        image: Image.asset(
          "assets/Vika.jpg",
        ),
        name: "Vika Deep Blue",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.edit,
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
        mode: ItemsMode.edit,
        image: Image.asset(
          "assets/Shiro.jpg",
        ),
        name: "Shiro",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.edit,
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
        mode: ItemsMode.edit,
        image: Image.asset(
          "assets/Odens.jpg",
        ),
        name: "Odens",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.edit,
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
        mode: ItemsMode.edit,
        image: Image.asset(
          "assets/LYFT.jpg",
        ),
        name: "LYFT Freeze X-Strong",
      ),
    ],
  ),
  ItemRow(
    items: [
      ItemContainer(
        mode: ItemsMode.edit,
        image: Image.asset(
          "assets/Thunder.jpg",
        ),
        name: "Thunder X",
      ),
    ],
  )
];

int getCountOfItems() => items.length;
