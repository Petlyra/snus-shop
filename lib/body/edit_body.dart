import 'package:flutter/material.dart';

import '../utils/load_items.dart';

class EditBody extends StatelessWidget {
  const EditBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ListView.builder(
        itemCount: getCountOfItems(),
        itemBuilder: (context, i) {
          final item = itemsToEdit[i];

          return ListTile(
            title: item,
          );
        },
      ),
    );
  }
}
