import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DataMobile extends StatelessWidget {
  const DataMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: AutoSizeText("Toplam Kelime : 10")),
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
                  child: AutoSizeText("Dogru Sayısı : 0")),
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
                  child: AutoSizeText("Yanlış Sayısı : 0")),
            ],
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                onTap: () {},
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
