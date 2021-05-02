import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DesktopOrTabletInput extends StatelessWidget {
  const DesktopOrTabletInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  width: width * 0.3,
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
                    style: TextStyle(fontSize: 30, color: Color.fromRGBO(71, 69, 111, 1)),
                  )),
              Container(
                width: width * 0.3,
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
                  width: width * 0.3,
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
                    style: TextStyle(fontSize: 30, color: Color.fromRGBO(71, 69, 111, 1)),
                  )),
              Container(
                width: width * 0.3,
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
    );
  }
}
