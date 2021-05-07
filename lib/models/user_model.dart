class Kullanici {
  final String? userID;
  String? userName;
  String? sifre;
  String? hataMesaji;

  Kullanici({this.userID, this.userName, this.sifre});

  @override
  String toString() {
    return 'Kullanici{userID: $userID, userName: $userName, sifre: $sifre hata: $hataMesaji}';
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': userID,
      'userName': userName,
      'sifre': sifre,
    };
  }

  Kullanici.fromMap(Map<String, dynamic> map)
      : userID = map['_id'],
        userName = map['userName'],
        sifre = map['sifre'];
}
