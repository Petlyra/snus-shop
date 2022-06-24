import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/item_container.dart';
import 'package:snus_shop/body/widgets/item_row.dart';
import 'package:snus_shop/utils/data.dart';

import '../entity/item.dart';

class EditBody extends StatefulWidget {
  const EditBody({Key? key}) : super(key: key);

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  final List<Item> _items = mockItems();

  Widget _buildTile(Item item) {
    return ListTile(
      title: generateItemRow([item], DisplayMode.edit),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      dividerColor: Colors.white,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _items[index].isExpanded = !isExpanded;
        });
      },
      children: _items.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return _buildTile(item);
          },
          body: const ListTile(
            title: SizedBox(
              height: 200,
            ),
          ),
          isExpanded: item.isExpanded,
          canTapOnHeader: true,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        // width: MediaQuery.of(context).size.width,
        child: _buildPanel(),
      ),
    );
  }
}
