import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/responsive.dart';
import 'package:flutter/material.dart';

class SoruAndCevap extends StatelessWidget {
  const SoruAndCevap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
            " 'Dog' Kelimesinin anlamı Nedir ? ",
            style: Responsive.isDesktop(context) ? TextStyle(fontSize: 35) : TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            onTap: () {},
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Text("A) Kedi", style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
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
            onTap: () {},
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Text("A) Kedi", style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
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
            onTap: () {},
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Text("A) Kedi", style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
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
            onTap: () {},
            child: Container(
              width: Responsive.isDesktop(context) ? width * 0.3 : width * 0.7,
              padding: EdgeInsets.all(10),
              child: Text("A) Kedi", style: Responsive.isDesktop(context) ? TextStyle(fontSize: 30) : TextStyle(fontSize: 20)),
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
              onPressed: () {},
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
}
