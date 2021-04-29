import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
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
                        child: AutoSizeText("Toplam Kelime : 10")),
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
                        child: AutoSizeText("Dogru Sayısı : 0")),
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
                        child: AutoSizeText("Yanlış Sayısı : 0")),
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade900,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.refresh),
                              AutoSizeText("Testi Sıfırla"),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: InkWell(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            onTap: () {},
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade900,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.refresh,
                                      size: 30,
                                    ),
                                    AutoSizeText(
                                      "Testi Sıfırla",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.grey,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: 20),
                                  Container(
                                    padding: EdgeInsets.all(25),
                                    width: MediaQuery.of(context).size.width * 0.5,
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
                                      style: TextStyle(fontSize: 35),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.3,
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.all(10),
                                        child: Text("A", style: TextStyle(fontSize: 30)),
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
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
