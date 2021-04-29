import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class KelimeEklePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(flex: 1, child: Container()),
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                width: 400,
                                margin: EdgeInsets.symmetric(vertical: 25),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade900,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, -2),
                                      blurRadius: 30,
                                      color: Colors.black.withOpacity(0.16),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: AutoSizeText(
                                  "Türkçe".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 35, color: Color.fromRGBO(71, 69, 111, 1)),
                                )),
                            Container(
                              width: 400,
                              child: TextFormField(
                                style: TextStyle(fontSize: 40),
                                minLines: 3,
                                maxLength: 30,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Kelime girin",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25),
                                      borderSide: new BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25),
                                      borderSide: new BorderSide(color: Colors.yellow.shade900, width: 3),
                                    )),
                                keyboardType: TextInputType.multiline,
                                maxLines: 30,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(35),
                          child: Icon(
                            Icons.sync_alt,
                            size: 40,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                                width: 400,
                                margin: EdgeInsets.symmetric(vertical: 25),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade900,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, -2),
                                      blurRadius: 30,
                                      color: Colors.black.withOpacity(0.16),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                child: AutoSizeText(
                                  "İngilizce".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 35, color: Color.fromRGBO(71, 69, 111, 1)),
                                )),
                            Container(
                              width: 400,
                              child: TextFormField(
                                style: TextStyle(fontSize: 40),
                                minLines: 3,
                                maxLength: 30,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Çeviri",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25),
                                      borderSide: new BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25),
                                      borderSide: new BorderSide(color: Colors.yellow.shade900, width: 3),
                                    )),
                                keyboardType: TextInputType.multiline,
                                maxLines: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          print("bas");
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, -2),
                                blurRadius: 30,
                                color: Colors.black.withOpacity(0.16),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.save, size: 40, color: Colors.green.shade200),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Kelimeyi Kaydet",
                                style: TextStyle(fontSize: 40, color: Color.fromRGBO(71, 69, 111, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ),
    );
  }
}
