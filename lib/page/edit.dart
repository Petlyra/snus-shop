import 'package:flutter/material.dart';
import 'package:snus_shop/body/edit_body.dart';

import '../appBar/custom_app_bar.dart';
import '../body/components/side_menu.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      appBar: CustomAppBar(
        title: Text("Edit items"),
        widgets: [],
      ),
      body: EditBody(),
    );
  }
}
