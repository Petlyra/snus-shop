import 'package:flutter/cupertino.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({Key? key, required this.items}) : super(key: key);

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}

