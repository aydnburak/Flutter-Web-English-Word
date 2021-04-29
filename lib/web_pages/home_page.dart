import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/englishbody.jpeg",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: AutoSizeText(
                    "İngilizce Ders regre grereg regrg ergrg ergreg frefe rer egre gerg er re  re ger re re gregreg "
                    "İngilizce Ders regre grereg regrg ergrg ergreg frefe rer egre gerg er re  re ger re re gregreg "
                    "İngilizce Ders regre grereg regrg ergrg ergreg frefe rer egre gerg er re  re ger re re gregreg "
                    "regrg ergrg ergreg frefe rer egre gerg er re  re ger re re gre  reg erg re ger r reg ger r ",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      ),
    );
  }
}
