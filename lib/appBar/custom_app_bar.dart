import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, required this.widgets})
      : super(key: key);

  final Text title;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
