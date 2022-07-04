import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/text_field_with_label.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFieldWithLabel(
                label: "id",
                value: widget.item.id,
              ),
              TextFieldWithLabel(
                label: "name",
                value: widget.item.name,
                controller: _nameController,
              ),
              TextFieldWithLabel(
                label: "price",
                value: widget.item.price,
                controller: _priceController,
              ),
              TextFieldWithLabel(
                label: "cratedAt",
                value: widget.item.createdAt,
              ),
            ],
          )
        ],
      ),
    );
  }
}
