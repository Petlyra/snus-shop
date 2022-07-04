import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/manage_container_body.dart';
import 'package:snus_shop/utils/data.dart';

import '../entity/item.dart';
import '../service/item_service.dart';

class EditBody extends StatefulWidget {
  const EditBody({Key? key}) : super(key: key);

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  // final List<Item> _items = mockItems();
  Future<List<Item>>? futureItems;

  Widget _buildHeaderTile(Item item) {
    return ListTile(
      title: generateItemRow([item], DisplayMode.edit),
    );
  }

  Widget _buildBodyTile(Item item) {
    return ListTile(
      title: ManageContainerBody(
        item: item,
      ),
    );
  }

  Widget _buildPanel(List<Item> futureItems) {
    return Expanded(
      child: ExpansionPanelList(
        animationDuration: const Duration(milliseconds: 500),
        // dividerColor: Colors.white,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            futureItems[index].isExpanded = !isExpanded;
          });
        },
        children: futureItems.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return _buildHeaderTile(item);
            },
            body: _buildBodyTile(item),
            isExpanded: item.isExpanded,
            canTapOnHeader: true,
          );
        }).toList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    futureItems = fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<List<Item>>(
        future: futureItems,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildPanel(snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
