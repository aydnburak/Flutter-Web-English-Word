import 'package:english_word/repository/user_repository.dart';
import 'package:english_word/repository/word_repository.dart';
import 'package:english_word/services/api_services.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => WordRepository());
  locator.registerLazySingleton(() => UserRepository());
}
