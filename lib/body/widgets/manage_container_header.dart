import 'package:flutter/material.dart';

import '../../entity/item.dart';

class ManageContainerHeader extends StatefulWidget {
  const ManageContainerHeader({Key? key, required this.child})
      : super(key: key);

  final Item child;

  @override
  State<ManageContainerHeader> createState() => _ManageContainerHeaderState();
}

class _ManageContainerHeaderState extends State<ManageContainerHeader> {
  TextStyle buildTextStyle(double fontSize) {
    return TextStyle(
      color: Colors.black,
      fontSize: fontSize,
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.child.id,
            style: buildTextStyle(16),
          ),
          widget.child.image,
          SizedBox(
            width: 100,
            child: Text(
              widget.child.name,
              style: buildTextStyle(14),
            ),
          ),
          Text(
            "${widget.child.price}₴",
            style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
