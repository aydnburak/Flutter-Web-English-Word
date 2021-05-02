import 'package:english_word/responsive.dart';
import 'package:english_word/screens/kelime_ekle/components/desktop_or_tablet_input.dart';
import 'package:english_word/screens/kelime_ekle/components/mobile_input.dart';
import 'package:english_word/screens/kelime_ekle/components/save_button.dart';
import 'package:flutter/material.dart';

class KelimeEkleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        if (!Responsive.isMobile(context))
          SizedBox(
            height: height * 0.1,
          ),
        Responsive.isMobile(context) ? MobileInput() : DesktopOrTabletInput(),
        SaveButton()
      ],
    );
  }
}
