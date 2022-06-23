import 'package:flutter/material.dart';
import 'package:snus_shop/body/components/container_content.dart';
import 'package:snus_shop/utils/prices.dart';

const double itemWidth = 160;
const double itemHeight = 225;

final itemBoxStyle = BoxDecoration(
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
  ]
);

class ItemContainer extends StatefulWidget {
  const ItemContainer({Key? key, required this.image, required this.name})
      : super(key: key);

  final Widget image;
  final String name;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: itemBoxStyle,
      width: itemWidth,
      height: itemHeight,
      child: ContainerContent(
        image: widget.image,
        name: widget.name,
        price: prices[widget.name],
      ),
    );
  }
}
