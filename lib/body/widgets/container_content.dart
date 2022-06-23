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
        Center(
          child: Text(
            widget.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.price,
              style: const TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                backgroundColor: Colors.white,
              ),
            ),
            const IconButton(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.blueAccent,
              ),
              tooltip: "Buy",
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }
}
