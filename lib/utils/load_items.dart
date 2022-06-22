import 'dart:io';

import 'package:flutter/material.dart';
import 'package:snus_shop/body/components/item_row.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  final double itemWidth = 170;
  final double itemHeight = 170;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ItemRow(
          items: [
            SizedBox(
                child: Image.asset(
              "assets/Vika.jpg",
              height: itemHeight,
              width: itemWidth,
            )),
            SizedBox(
                child: Image.asset(
              "assets/G4.jpg",
              height: itemHeight,
              width: itemWidth,
            )),
          ],
        ),
        ItemRow(
          items: [
            SizedBox(
                child: Image.asset(
              "assets/Shiro.jpg",
              height: itemHeight,
              width: itemWidth,
            )),
            SizedBox(
                child: Image.asset(
              "assets/Siberia.jpg",
              height: itemHeight,
              width: itemWidth,
            )),
          ],
        ),
        ItemRow(
          items: [
            SizedBox(
                child: Image.asset(
              "assets/Odens.jpg",
              height: itemHeight,
              width: itemWidth,
            )),
          ],
        )
      ],
    );
  }
}
