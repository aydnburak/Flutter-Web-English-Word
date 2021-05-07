import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/responsive.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SoruAndCevap extends StatelessWidget {
  const SoruAndCevap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _wordModel = Provider.of<WordModel>(context);
    return Column(
      children: <Widget>[
        Container(
          padding: Responsive.isDesktop(context) ? EdgeInsets.all(25) : EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          width: Responsive.isDesktop(context) ? width * 0.5 : width * 0.8,
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
            "'" + _wordModel.sorum.soru.en + "' Kelimesinin anlamı Nedir ? ",
            style: Responsive.isDesktop(context) ? TextStyle(fontSize: 35) : TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: _wordModel.sorum.kilit == true
                ? null
                : _wordModel.sorum.secenekler[0].durum != null
                    ? null
                    : () => _wordModel.soruKontrol(0),
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("A) " + _wordModel.sorum.secenekler[0].tr,
                      style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
                  Spacer(),
                  Iconum(_wordModel.sorum.secenekler[0].durum)
                ],
              ),
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: _wordModel.sorum.kilit == true
                ? null
                : _wordModel.sorum.secenekler[1].durum != null
                    ? null
                    : () => _wordModel.soruKontrol(1),
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("B) " + _wordModel.sorum.secenekler[1].tr,
                      style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
                  Spacer(),
                  Iconum(_wordModel.sorum.secenekler[1].durum)
                ],
              ),
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: _wordModel.sorum.kilit == true
                ? null
                : _wordModel.sorum.secenekler[2].durum != null
                    ? null
                    : () => _wordModel.soruKontrol(2),
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("C) " + _wordModel.sorum.secenekler[2].tr,
                      style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
                  Spacer(),
                  Iconum(_wordModel.sorum.secenekler[2].durum)
                ],
              ),
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: _wordModel.sorum.kilit == true
                ? null
                : _wordModel.sorum.secenekler[3].durum != null
                    ? null
                    : () => _wordModel.soruKontrol(3),
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("D) " + _wordModel.sorum.secenekler[3].tr,
                      style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
                  Spacer(),
                  Iconum(_wordModel.sorum.secenekler[3].durum)
                ],
              ),
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
            ),
          ),
        ),
        FittedBox(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
              onPressed: () {
                _wordModel.soruOlustur();
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.refresh, color: Colors.black),
                  Text(
                    "Soruyu Degiştir",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
        )
      ],
    );
  }

  Widget Iconum(bool? durum) {
    if (durum == null) {
      return Container();
    } else if (durum == false) {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.close, color: Colors.red.shade900),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.done, color: Colors.green.shade900),
      );
    }
  }
}
