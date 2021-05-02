import 'package:english_word/constants.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _menuModel = Provider.of<MenuModel>(context);
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/englishbody.jpeg",
                fit: BoxFit.contain,
              ),
            ),
            ...List.generate(
              _menuModel.menuItems.length,
              (index) => DrawerItem(
                isActive: index == _menuModel.selectedMenuIndex,
                title: _menuModel.menuItems[index],
                press: () {
                  _menuModel.setMenuIndex(index);
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
