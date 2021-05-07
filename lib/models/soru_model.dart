import 'package:english_word/models/soru_secenekleri_model.dart';

class Soru {
  final Secenek soru;
  final List<Secenek> secenekler;

  Soru({required this.soru, required this.secenekler});

  bool isIslem = false;
  bool kilit = false;
}
