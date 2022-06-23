import 'package:flutter/material.dart';

final itemBoxStyle = BoxDecoration(
  border: Border.all(color: Colors.blueAccent, width: 5),
  borderRadius: BorderRadius.circular(10),
);

class ItemContainer extends StatefulWidget {
  const ItemContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  final double itemWidth = 160;
  final double itemHeight = 190;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: itemBoxStyle,
      width: itemWidth,
      height: itemHeight,
      child: widget.child,
    );
  }
}
