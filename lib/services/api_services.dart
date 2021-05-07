import 'package:dio/dio.dart';
import 'package:english_word/models/user_model.dart';
import 'package:english_word/models/word_model.dart';
import 'package:english_word/services/api_base.dart';

class ApiService implements ApiBase {
  String url = "https://englishwordapi.herokuapp.com/";
  var dio = new Dio();

  Future<void> getUsers() async {
    try {
      var response = await dio.get(url + "api/users");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  Future<Kullanici> login(String userName, String sifre) async {
    Kullanici kullanici = Kullanici();
    try {
      var response = await dio.post(url + "api/users/login", data: {'userName': userName, 'sifre': sifre});

      if (response.statusCode == 200) {
        return Kullanici.fromMap(response.data);
      } else {
        kullanici.hataMesaji = response.data['mesaj'];
        return kullanici;
      }
    } catch (e) {
      kullanici.hataMesaji = "bir Sorun Oluştu.";
      return kullanici;
    }
  }

  Future<Kullanici> register(String userName, String sifre) async {
    Kullanici kullanici = Kullanici();
    try {
      var response = await dio.post(url + "api/users/register", data: {'userName': userName, 'sifre': sifre});
      if (response.statusCode == 200) {
        return Kullanici.fromMap(response.data);
      } else {
        kullanici.hataMesaji = response.data['mesaj'];
        return kullanici;
      }
    } catch (e) {
      kullanici.hataMesaji = "bir Sorun Oluştu.";
      return kullanici;
    }
  }

  @override
  Future<Word> addWord(String userID, String tr, String en) async {
    try {
      var response = await dio.post(url + "api/word/addword", data: {'userID': userID, 'tr': tr, 'en': en});
      if (response.statusCode == 200) {
        return Word.fromMap(response.data);
      } else {
        return Word();
      }
    } catch (e) {
      return Word();
    }
  }

  @override
  Future<List<Word>> allUserWords(String userID) async {
    List<Word> list = [];
    try {
      var response = await dio.get(url + "api/word/" + userID);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => Word.fromMap(e)).toList();
      } else {
        return list;
      }
    } catch (e) {
      return list;
    }
  }
}
