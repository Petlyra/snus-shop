import 'package:flutter/material.dart';
import 'package:snus_shop/utils/load_items.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  // final Items items = const Items();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: getCountOfItems(),
        itemBuilder: (context, i) {
          final item = items[i];

          return ListTile(
            title: item,
          );
        },
      ),
    );
  }
}
