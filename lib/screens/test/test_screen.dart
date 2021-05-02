import 'package:english_word/responsive.dart';
import 'package:english_word/screens/test/components/data_mobile.dart';
import 'package:english_word/screens/test/components/data_web.dart';
import 'package:english_word/screens/test/components/soru_and_cevap.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Responsive.isMobile(context) ? DataMobile() : DataWeb(),
        SoruAndCevap(),
      ],
    );
  }
}
