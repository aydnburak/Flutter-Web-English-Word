import 'package:flutter/material.dart';

enum ViewState { idle, Busy }

class MenuModel with ChangeNotifier {
  int _selectedMenuIndex = 0;
  ViewState _viewState = ViewState.idle;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedMenuIndex => _selectedMenuIndex;

  ViewState get viewState => _viewState;

  set viewState(ViewState value) {
    _viewState = value;
    notifyListeners();
  }

  List<String> get menuItems => ["Home", "Kelime Ekle", "Test"];

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
    notifyListeners();
  }

  void setMenuIndex(value) {
    _selectedMenuIndex = value;
    notifyListeners();
  }
}
