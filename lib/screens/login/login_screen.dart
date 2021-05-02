import 'package:english_word/responsive.dart';
import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
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
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _userModel.loginMod == LoginMod.Login ? Text("Giriş Yap") : Text("Kayıt Ol"),
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _userModel.loginMod == LoginMod.Login ? Text("Hesabın Yok mu ? ") : Text("Hesabın Var mı ? "),
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
                        "Giriş Yap",
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
