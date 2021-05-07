import 'package:english_word/locator.dart';
import 'package:english_word/models/user_model.dart';
import 'package:english_word/repository/user_repository.dart';
import 'package:english_word/repository/word_repository.dart';
import 'package:english_word/viewmodel/menu_viewmodel.dart';
import 'package:english_word/viewmodel/word_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum ViewState { idle, Busy }
enum LoginMod { Login, Register }

class UserModel with ChangeNotifier {
  ViewState _viewState = ViewState.idle;
  LoginMod _loginMod = LoginMod.Login;
  Kullanici _kullanici = Kullanici();
  bool islogin = false;
  UserRepository _userRepository = locator<UserRepository>();
  WordRepository _wordRepository = locator<WordRepository>();

  Kullanici get kullanici => _kullanici;

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

  void login(String userName, String sifre, BuildContext context) async {
    _kullanici.hataMesaji = null;
    islogin = true;
    notifyListeners();
    final _menuModel = Provider.of<MenuModel>(context, listen: false);
    final _wordModel = Provider.of<WordModel>(context, listen: false);
    _kullanici = await _userRepository.login(userName, sifre);
    islogin = false;
    if (_kullanici.userID != null) {
      _menuModel.setMenuIndex(0);
      _wordModel.allUserWords(_kullanici.userID);
    } else {
      notifyListeners();
    }
    print(_kullanici.toString());
  }

  void register(String userName, String sifre, BuildContext context) async {
    _kullanici.hataMesaji = null;
    islogin = true;
    notifyListeners();
    final _menuModel = Provider.of<MenuModel>(context, listen: false);
    _kullanici = await _userRepository.register(userName, sifre);
    islogin = false;
    if (_kullanici.userID != null) {
      _menuModel.setMenuIndex(0);
    } else {
      notifyListeners();
    }
    print(_kullanici.toString());
  }

  void signOut(BuildContext context) {
    final _wordModel = Provider.of<WordModel>(context, listen: false);
    _kullanici = Kullanici();
    _loginMod = LoginMod.Login;
    _wordModel.kelimelerReset();
    notifyListeners();
  }
}
