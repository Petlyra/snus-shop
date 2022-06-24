import 'package:flutter/material.dart';

class ManageContainerHeader extends StatefulWidget {
  const ManageContainerHeader(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);

  final Widget image;
  final String name;
  final String price;

  @override
  State<ManageContainerHeader> createState() => _ManageContainerHeaderState();
}

class _ManageContainerHeaderState extends State<ManageContainerHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.image,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  backgroundColor: Colors.white,
                ),
              ),
              Text(
                "${widget.price}₴",
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const IconButton(
          icon: Icon(Icons.add),
          tooltip: "Edit",
          onPressed: null,
        ),
      ],
    );
  }
}
