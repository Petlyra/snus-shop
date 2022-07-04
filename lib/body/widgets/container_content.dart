import 'package:flutter/material.dart';
import 'package:snus_shop/entity/item.dart';

class ContainerContent extends StatefulWidget {
  const ContainerContent(
      {Key? key, required this.child})
      : super(key: key);

  final Item child;

  @override
  State<ContainerContent> createState() => _ContainerContentState();
}

class _ContainerContentState extends State<ContainerContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        widget.child.image,
        Center(
          child: Text(
            widget.child.name,
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
              "${widget.child.price}₴",
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
