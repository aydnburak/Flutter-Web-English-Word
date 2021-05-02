import 'package:english_word/responsive.dart';
import 'package:english_word/screens/main/components/log_in_button.dart';
import 'package:english_word/screens/main/components/web_menu.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _menuModel = Provider.of<MenuModel>(context);
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            if (Responsive.isMobile(context))
              IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  _menuModel.openOrCloseDrawer();
                },
              ),
            Image.asset(
              "assets/images/icon.jpeg",
              height: 25,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width: 5),
            Text(
              "English Word".toUpperCase(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromRGBO(71, 69, 111, 1)),
            ),
            Spacer(),
            if (!Responsive.isMobile(context)) WebMenu(),
            Spacer(),
            LogInButton(),
          ],
        ),
      ),
    );
  }
}
