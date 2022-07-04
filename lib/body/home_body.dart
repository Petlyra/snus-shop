import 'package:flutter/material.dart';

import '../entity/item.dart';
import '../service/item_service.dart';
import '../utils/data.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  // final List<Item> _items = mockItems();

  Future<List<Item>>? futureItems;

  Widget buildListView(List<Item> futureItems) {
    int extraIndex = 0;
    return ListView.builder(
      itemCount: (futureItems.length % 2 == 0
          ? futureItems.length / 2
          : futureItems.length ~/ 2 + 1)
          .toInt(),
      itemBuilder: (context, i) {
        var items = [futureItems[extraIndex]];

        if (extraIndex < futureItems.length - 1) {
          items.add(futureItems[extraIndex + 1]);
        }

        extraIndex += 2;
        return ListTile(
          title: generateItemRow(items, DisplayMode.view),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    futureItems = fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: FutureBuilder<List<Item>>(
        future: futureItems,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildListView(snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          ) ;
        },
      ),
    );
  }
}
