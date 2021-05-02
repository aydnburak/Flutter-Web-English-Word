import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeMetin extends StatelessWidget {
  const HomeMetin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.4,
      margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1, top: height * 0.1),
      child: AutoSizeText(
        "İngilizce Ezberlediğiniz Kelimeleri Kayıt Ederek İstediğiniz Zaman Kendinizi Test Edebilirsiniz.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
