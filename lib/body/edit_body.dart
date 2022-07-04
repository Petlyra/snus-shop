import 'package:flutter/material.dart';
import 'package:snus_shop/utils/data.dart';

import '../entity/item.dart';

class EditBody extends StatefulWidget {
  const EditBody({Key? key}) : super(key: key);

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  // final List<Item> _items = mockItems();
  Future<List<Item>>? futureItems;

  Widget _buildTile(Item item) {
    return ListTile(
      title: generateItemRow([item], DisplayMode.edit),
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
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    futureItems = fetchData();
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
