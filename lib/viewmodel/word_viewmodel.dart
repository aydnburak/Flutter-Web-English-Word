import 'dart:math';

import 'package:english_word/locator.dart';
import 'package:english_word/models/soru_model.dart';
import 'package:english_word/models/soru_secenekleri_model.dart';
import 'package:english_word/models/word_model.dart';
import 'package:english_word/repository/word_repository.dart';
import 'package:flutter/material.dart';

enum ViewState { idle, Busy }

class WordModel with ChangeNotifier {
  WordModel() {
    _listDoldur();
    soruOlustur();
  }

  ViewState _viewState = ViewState.idle;
  WordRepository _wordRepository = locator<WordRepository>();
  String? tr;
  String? en;
  List<Word> _kelimeler = [];
  late Soru _sorum;
  int dogruSayisi = 0;
  int yanlisSayisi = 0;

  Soru get sorum => _sorum;

  List<Word> get kelimeler => _kelimeler;

  ViewState get viewState => _viewState;

  set viewState(ViewState value) {
    _viewState = value;
    notifyListeners();
  }

  Future<void> addWord(String? userID) async {
    if (userID != null) {
      _kelimeler.add(Word(userID: "123", tr: tr, en: en));
      await _wordRepository.addWord(userID, tr!, en!);
    } else {
      _kelimeler.add(Word(tr: tr, en: en));
    }
  }

  Future<void> allUserWords(String? userID) async {
    _listDoldur();
    _kelimeler = await _wordRepository.allUserWords(userID!);
    _listDoldur();
  }

  void kelimelerReset() {
    _kelimeler = [];
    _listDoldur();
    testReset();
  }

  void _listDoldur() {
    List<String> enlist = ["Hello", "Today", "Morning", "Excuse me", "Up", "Medium", "Long", "Who?", "Happy years", "Where?"];
    List<String> trlist = [
      "Merhaba",
      "Bugün",
      "Sabah",
      "Özür dilerim",
      "Yukarıda",
      "Orta",
      "Uzun",
      "Kim?",
      "Mutlu yıllar",
      "Nerede?"
    ];
    for (int i = 0; i < trlist.length; i++) {
      _kelimeler.add(Word(tr: trlist[i], en: enlist[i]));
    }
  }

  void soruOlustur() {
    List<Secenek> secenekler = [];
    var rng = new Random();
    List<int> sayilar = sayiVer();
    for (var i = 0; i < 4; i++) {
      secenekler.add(Secenek(tr: _kelimeler[sayilar[i]].tr!, en: _kelimeler[sayilar[i]].en!));
    }

    _sorum = Soru(soru: secenekler[rng.nextInt(4)], secenekler: secenekler);
    notifyListeners();
  }

  void soruKontrol(int deger) {
    if (_sorum.soru.tr == _sorum.secenekler[deger].tr) {
      _sorum.secenekler[deger].durum = true;
      _sorum.kilit = true;

      if (_sorum.isIslem == false) {
        dogruSayisi++;
        _sorum.isIslem = true;
      }
    } else {
      _sorum.secenekler[deger].durum = false;
      if (_sorum.isIslem == false) {
        yanlisSayisi++;
        _sorum.isIslem = true;
      }
    }

    notifyListeners();
  }

  void testReset() {
    dogruSayisi = 0;
    yanlisSayisi = 0;
    soruOlustur();
    notifyListeners();
  }

  List<int> sayiVer() {
    List<int> sayilar = [];
    var rng = new Random();
    int i = 0;
    while (i < 4) {
      int sayi = rng.nextInt(_kelimeler.length);
      if (!sayilar.contains(sayi)) {
        sayilar.add(sayi);
        i++;
      }
    }
    return sayilar;
  }
}
