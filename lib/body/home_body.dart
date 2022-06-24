import 'package:flutter/material.dart';

import '../entity/item.dart';
import '../utils/data.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<Item> _items = mockItems();

  @override
  Widget build(BuildContext context) {
    int extraIndex = 0;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ListView.builder(
        itemCount: (_items.length % 2 == 0
                ? _items.length / 2
                : _items.length ~/ 2 + 1)
            .toInt(),
        itemBuilder: (context, i) {
          var items = [_items[extraIndex]];

          if (extraIndex < _items.length - 1) {
            items.add(_items[extraIndex + 1]);
          }

          extraIndex += 2;
          return ListTile(
            title: generateItemRow(items, DisplayMode.view),
          );
        },
      ),
    );
  }
}
