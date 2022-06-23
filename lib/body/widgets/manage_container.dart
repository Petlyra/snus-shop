import 'package:flutter/material.dart';

class ManageContainer extends StatefulWidget {
  const ManageContainer(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);

  final Widget image;
  final String name;
  final String price;

  @override
  State<ManageContainer> createState() => _ManageContainerState();
}

class _ManageContainerState extends State<ManageContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.image,
        Text(
          widget.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            backgroundColor: Colors.white,
          ),
        ),
        Text(
          widget.price,
          style: const TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
