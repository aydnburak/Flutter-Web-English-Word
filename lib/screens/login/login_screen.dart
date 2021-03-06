import 'package:english_word/responsive.dart';
import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  String? userName, sifre;
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserModel>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: Responsive.isMobile(context) ? width * 0.8 : 400,
      margin: EdgeInsets.only(top: height * 0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: height * 0.1),
          FittedBox(
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/icon.jpeg",
                  height: 25,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(width: 5),
                Text(
                  "English Word".toUpperCase(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromRGBO(71, 69, 111, 1)),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.05),
          Form(
            key: _loginFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (girilenusername) => userName = girilenusername,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return 'UserName Bo?? Olamaz';
                        } else if (value.length < 5) {
                          return 'UserName min 5 karakter olmal??';
                        }
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Kullan??c?? Ad??",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: new BorderSide(),
                      ),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (girilensifre) => sifre = girilensifre,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return '??ifre Bo?? Olamaz';
                        } else if (value.length < 5) {
                          return '??ifre min 5 Karakterden olmal??';
                        }
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "??ifre",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: new BorderSide(),
                      ),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_loginFormKey.currentState!.validate()) {
                          _loginFormKey.currentState!.save();
                          _userModel.loginMod == LoginMod.Login
                              ? _userModel.login(userName!, sifre!, context)
                              : _userModel.register(userName!, sifre!, context);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _userModel.loginMod == LoginMod.Login ? Text("Giri?? Yap") : Text("Kay??t Ol"),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Text(_userModel.kullanici.hataMesaji ?? "", style: TextStyle(color: Colors.red, fontSize: 25)),
          _userModel.islogin == false ? Container() : CircularProgressIndicator(),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _userModel.loginMod == LoginMod.Login ? Text("Hesab??n Yok mu ? ") : Text("Hesab??n Var m?? ? "),
              _userModel.loginMod == LoginMod.Login
                  ? TextButton(
                      onPressed: () {
                        _userModel.loginMod = LoginMod.Register;
                      },
                      child: Text(
                        "Kaydol",
                        style: TextStyle(),
                      ))
                  : TextButton(
                      onPressed: () {
                        _userModel.loginMod = LoginMod.Login;
                      },
                      child: Text(
                        "Giri?? Yap",
                        style: TextStyle(),
                      ))
            ],
          ),
          SizedBox(height: height * 0.05),
        ],
      ),
    );
  }
}
