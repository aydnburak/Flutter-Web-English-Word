import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_word/screens/kelime_ekle/components/save_button.dart';
import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopOrTabletInput extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserModel>(context);
    final _wordModel = Provider.of<WordModel>(context);
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Column(
        children: [
          Form(
            key: _formKey,
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
                        onChanged: (value) {
                          _wordModel.tr = value;
                        },
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty) {
                              return 'Boş Olamaz';
                            }
                          }
                        },
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
                        onChanged: (value) {
                          _wordModel.en = value;
                        },
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty) {
                              return 'Boş Olamaz';
                            }
                          }
                        },
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
          ),
          SaveButton(press: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.reset();
              _wordModel.addWord(_userModel.kullanici.userID);
            }
          }),
        ],
      ),
    );
  }
}
