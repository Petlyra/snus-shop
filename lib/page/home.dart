import 'package:flutter/material.dart';
import 'package:snus_shop/appBar/custom_app_bar.dart';
import 'package:snus_shop/body/components/side_menu.dart';
import 'package:snus_shop/body/home_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      appBar: CustomAppBar(
        title: Text("Snus Shop"),
        widgets: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}
