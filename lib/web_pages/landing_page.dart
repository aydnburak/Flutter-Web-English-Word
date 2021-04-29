import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:english_word/web_pages/home_page.dart';
import 'package:english_word/web_pages/kelime_ekle_page.dart';
import 'package:english_word/web_pages/test_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final _englishModel = Provider.of<MenuModel>(context);
    return Scaffold(
        backgroundColor: Colors.yellow.shade800,
        body: Column(
          children: <Widget>[HomePage()],
        ));
  }
}
