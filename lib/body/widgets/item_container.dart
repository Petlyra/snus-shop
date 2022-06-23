import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/container_content.dart';
import 'package:snus_shop/utils/load_items.dart';
import 'package:snus_shop/utils/prices.dart';

import 'manage_container.dart';

const double itemWidth = 160;
const double itemHeight = 225;

// const double itemWidthEditMode = MediaQuery.of(context).size.width;
const double itemHeightEditMode = 60;

final itemBoxStyleViewMode = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.blueAccent, width: 5),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ]);

final itemBoxStyleEditMode = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ]);

class ItemContainer extends StatefulWidget {
  const ItemContainer(
      {Key? key, required this.image, required this.name, required this.mode})
      : super(key: key);

  final Widget image;
  final String name;
  final ItemsMode mode;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    if (widget.mode == ItemsMode.view) {
      return Container(
        padding: const EdgeInsets.all(5),
        decoration: itemBoxStyleViewMode,
        width: itemWidth,
        height: itemHeight,
        child: ContainerContent(
          image: widget.image,
          name: widget.name,
          price: prices[widget.name],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(5),
        decoration: itemBoxStyleViewMode,
        width: MediaQuery.of(context).size.width * 0.85,
        height: itemHeightEditMode,
        child: ManageContainer(
          image: widget.image,
          name: widget.name,
          price: prices[widget.name],
        ),
      );
    }
  }
}
