import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  // void pushEdit() {
  //   Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
  //     return const Edit();
  //   }));
  // }
  //
  // void pushHome() {
  //   Navigator.of(context).pop();
  // }

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
            leading: Icon(Icons.mode_edit_outline),
            title: Text('Edit items'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
