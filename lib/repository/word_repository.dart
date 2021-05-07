import 'package:english_word/locator.dart';
import 'package:english_word/models/word_model.dart';
import 'package:english_word/services/api_services.dart';

class WordRepository {
  ApiService _apiService = locator<ApiService>();

  Future<List<Word>> allUserWords(String userID) async {
    return await _apiService.allUserWords(userID);
  }

  Future<Word> addWord(String userID, String tr, String en) async {
    return await _apiService.addWord(userID, tr, en);
  }
}
