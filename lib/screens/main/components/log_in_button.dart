import 'package:english_word/constants.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _menuModel = Provider.of<MenuModel>(context);
    final _userModel = Provider.of<UserModel>(context);
    return _userModel.kullanici.userName == null
        ? DefaultButton(
            text: "Kayıt ol",
            press: () {
              _menuModel.setMenuIndex(3);
            },
          )
        : DefaultButton2(text: "Hoş Geldiniz", press: () => _userModel.signOut(context));
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow.shade900),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          ),
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class DefaultButton2 extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton2({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow.shade900),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
            onPressed: () {},
            child: Text(
              text.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        IconButton(
          iconSize: 30,
          icon: Icon(
            Icons.logout,
            color: kDarkBlackColor,
          ),
          onPressed: press,
        ),
      ],
    );
  }
}
