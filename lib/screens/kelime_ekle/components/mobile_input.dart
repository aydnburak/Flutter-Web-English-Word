import 'package:flutter/material.dart';

class MobileInput extends StatelessWidget {
  const MobileInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          width: width * 0.8,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Türkçe",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(71, 69, 111, 1)),
              ),
              Icon(Icons.sync_alt),
              Text(
                "İngilizce",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(71, 69, 111, 1)),
              ),
            ],
          ),
        ),
        Container(
          width: width * 0.8,
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
        Container(
          width: width * 0.8,
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
    );
  }
}
