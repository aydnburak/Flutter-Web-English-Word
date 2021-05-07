import 'package:english_word/screens/kelime_ekle/components/save_button.dart';
import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileInput extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _userModel = Provider.of<UserModel>(context);
    final _wordModel = Provider.of<WordModel>(context);
    return Form(
      key: _formKey,
      child: Column(
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
          Container(
            width: width * 0.8,
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
