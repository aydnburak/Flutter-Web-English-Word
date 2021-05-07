import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataWeb extends StatelessWidget {
  const DataWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _wordModel = Provider.of<WordModel>(context);
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              ),
              child: AutoSizeText("Toplam Kelime : " + _wordModel.kelimeler.length.toString())),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              ),
              child: AutoSizeText("Dogru Sayısı : " + _wordModel.dogruSayisi.toString())),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              ),
              child: AutoSizeText("Yanlış Sayısı : " + _wordModel.yanlisSayisi.toString())),
          InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: () {
              _wordModel.testReset();
            },
            child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.refresh),
                    AutoSizeText(
                      "Testi Sıfırla",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
