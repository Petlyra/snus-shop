import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Shop'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text('Add new product'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
