import 'package:flutter/material.dart';

final itemBoxStyle = BoxDecoration(
  border: Border.all(
      color: Colors.blueAccent,
      width: 5
  ),
  borderRadius: BorderRadius.circular(10),
);

class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key, required this.child}) : super(key: key);

  final double itemWidth = 160;
  final double itemHeight = 160;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: itemBoxStyle,
      width: itemWidth,
      height: itemHeight,
      child: child,
    );
  }
}

