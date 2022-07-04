import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatefulWidget {
  const TextFieldWithLabel(
      {Key? key, required this.label, required this.value, this.controller})
      : super(key: key);

  final String label;
  final String value;
  final TextEditingController? controller;

  @override
  State<TextFieldWithLabel> createState() => _TextFieldWithLabelState();
}

class _TextFieldWithLabelState extends State<TextFieldWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.label}:",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.value),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: widget.controller != null
                ? TextField(
                    controller: widget.controller,
                    decoration: const InputDecoration(hintText: "Enter id"),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
