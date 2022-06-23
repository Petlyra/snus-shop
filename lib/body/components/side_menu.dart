import 'package:flutter/material.dart';
import 'package:snus_shop/page/home.dart';

import '../../page/edit.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text('Shop'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute<void>(builder: (context) {
                return const Home();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mode_edit_outline),
            title: const Text('Edit items'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute<void>(builder: (context) {
                return const Edit();
              }));
            },
          ),
        ],
      ),
    );
  }
}
