import 'package:flutter/material.dart';
import 'package:snus_shop/body/widgets/container_content.dart';
import 'package:snus_shop/utils/data.dart';

import '../../entity/item.dart';
import 'manage_container_header.dart';

const double itemWidth = 160;
const double itemHeight = 225;

const double itemHeightEditMode = 60;

final itemBoxStyleViewMode = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.blueAccent, width: 5),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ]);

final itemBoxStyleEditMode = BoxDecoration(color: Colors.white, boxShadow: [
  BoxShadow(
    color: Colors.black.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  )
]);

class ItemContainer extends StatefulWidget {
  const ItemContainer({
    Key? key,
    required this.child,
    required this.mode,
  }) : super(key: key);

  final Item child;
  final DisplayMode mode;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  Widget _buildContainer(DisplayMode mode, Widget child) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: mode == DisplayMode.view
          ? itemBoxStyleViewMode
          : null,
      width: mode == DisplayMode.view
          ? itemWidth
          : MediaQuery.of(context).size.width * 0.85,
      height: mode == DisplayMode.view ? itemHeight : itemHeightEditMode,
      child: child,
    );
  }

  Widget _buildContainerWithMode(DisplayMode mode, Widget child) {
    return mode == DisplayMode.edit
        ? Expanded(
            child: _buildContainer(mode, child),
          )
        : _buildContainer(mode, child);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = DisplayMode.view == widget.mode
        ? ContainerContent(
            child: widget.child,
          )
        : ManageContainerHeader(
            child: widget.child,
          );

    return _buildContainerWithMode(widget.mode, content);
  }
}
