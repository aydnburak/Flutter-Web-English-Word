import 'package:english_word/models/user_model.dart';
import 'package:english_word/models/word_model.dart';

abstract class ApiBase {
  Future<void> getUsers();
  Future<Kullanici> login(String userName, String sifre);
  Future<Kullanici> register(String userName, String sifre);
  Future<Word> addWord(String userID, String tr, String en);
  Future<List<Word>> allUserWords(String userID);
}
