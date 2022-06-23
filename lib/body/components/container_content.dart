import 'package:flutter/material.dart';

class ContainerContent extends StatefulWidget {
  const ContainerContent(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);

  final Widget image;
  final String name;
  final String price;

  @override
  State<ContainerContent> createState() => _ContainerContentState();
}

class _ContainerContentState extends State<ContainerContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        widget.image,
        Text(
          widget.name,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: const TextStyle(color: Colors.red, fontSize: 28),
            ),
            const IconButton(
              icon: Icon(Icons.account_balance_wallet),
              tooltip: "Buy",
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }
}
