import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/container_content.dart';
import 'package:snus_shop/utils/data.dart';

import 'manage_container_header.dart';

const double itemWidth = 160;
const double itemHeight = 225;

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

final itemBoxStyleEditMode = BoxDecoration(color: Colors.white, boxShadow: [
  BoxShadow(
    color: Colors.black.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  )
]);

class ItemContainer extends StatefulWidget {
  const ItemContainer(
      {Key? key,
      required this.image,
      required this.name,
      required this.mode,
      required this.price})
      : super(key: key);

  final Widget image;
  final String name;
  final String price;
  final DisplayMode mode;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    if (widget.mode == DisplayMode.view) {
      return Container(
        padding: const EdgeInsets.all(5),
        decoration: itemBoxStyleViewMode,
        width: itemWidth,
        height: itemHeight,
        child: ContainerContent(
          image: widget.image,
          name: widget.name,
          price: widget.price,
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(5),
        decoration: itemBoxStyleEditMode,
        width: MediaQuery.of(context).size.width * 0.85,
        height: itemHeightEditMode,
        child: ManageContainerHeader(
          image: widget.image,
          name: widget.name,
          price: widget.price,
        ),
      );
    }
  }
}
