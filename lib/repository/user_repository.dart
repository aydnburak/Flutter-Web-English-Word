import 'package:english_word/locator.dart';
import 'package:english_word/models/user_model.dart';
import 'package:english_word/services/api_services.dart';

class UserRepository {
  ApiService _apiService = locator<ApiService>();

  Future<Kullanici> login(String userName, String sifre) async {
    return await _apiService.login(userName, sifre);
  }

  Future<Kullanici> register(String userName, String sifre) async {
    return await _apiService.register(userName, sifre);
  }
}
