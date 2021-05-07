import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataMobile extends StatelessWidget {
  const DataMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _wordModel = Provider.of<WordModel>(context);
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
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
                child: AutoSizeText(
                  "Toplam Kelime : " + _wordModel.kelimeler.length.toString(),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
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
                  margin: EdgeInsets.all(10),
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
            ],
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                onTap: () {
                  _wordModel.testReset();
                },
                child: Container(
                    width: width * 0.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.refresh),
                        AutoSizeText(
                          "Testi Sıfırla",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
