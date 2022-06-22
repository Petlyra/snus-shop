import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, required this.widgets})
      : super(key: key);

  final Text title;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const IconButton(
        icon: Icon(Icons.menu),
        tooltip: "Navigation menu",
        onPressed: null,
      ),
      title: title,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
