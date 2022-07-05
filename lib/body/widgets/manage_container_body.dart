import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/text_field_with_label.dart';
import 'package:snus_shop/service/item_service.dart';

import '../../entity/item.dart';

class ManageContainerBody extends StatefulWidget {
  const ManageContainerBody({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  State<ManageContainerBody> createState() => _ManageContainerBodyState();
}

class _ManageContainerBodyState extends State<ManageContainerBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<Item>? _futureItem;

  Future<Item> _sendUpdateRequest(Item item) {
    ItemRequest request =
        ItemRequest(_nameController.text, _priceController.text);
    return updateItem(request);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFieldWithLabel(
            label: "Id",
            value: widget.item.id,
          ),
          TextFieldWithLabel(
            label: "Name",
            value: widget.item.name,
            controller: _nameController,
          ),
          TextFieldWithLabel(
            label: "Price",
            value: widget.item.price,
            controller: _priceController,
          ),
          TextFieldWithLabel(
            label: "Creation date",
            value: widget.item.createdAt,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _futureItem = _sendUpdateRequest(widget.item);
              });
            },
            child: const Text("Update Item"),
          ),
        ],
      ),
    );
  }
}
