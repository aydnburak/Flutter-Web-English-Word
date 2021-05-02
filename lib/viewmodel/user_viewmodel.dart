import 'package:flutter/material.dart';

enum ViewState { idle, Busy }
enum LoginMod { Login, Register }

class UserModel with ChangeNotifier {
  ViewState _viewState = ViewState.idle;
  LoginMod _loginMod = LoginMod.Login;

  LoginMod get loginMod => _loginMod;

  set loginMod(LoginMod value) {
    _loginMod = value;
    notifyListeners();
  }

  ViewState get viewState => _viewState;

  set viewState(ViewState value) {
    _viewState = value;
    notifyListeners();
  }
}
