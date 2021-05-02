import 'package:english_word/screens/main/components/header.dart';
import 'package:english_word/screens/main/components/side_menu.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _menuModel = Provider.of<MenuModel>(context);
    return Scaffold(
      key: _menuModel.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            SafeArea(
              child: _menuModel.getScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
