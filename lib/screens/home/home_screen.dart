import 'package:english_word/responsive.dart';
import 'package:english_word/screens/home/components/home_logo.dart';
import 'package:english_word/screens/home/components/home_metin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        if (!Responsive.isMobile(context)) SizedBox(height: height * 0.1),
        HomeLogo(),
        HomeMetin(),
      ],
    );
  }
}
