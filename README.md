# English word

Flutter Web Kullanarak hazırladıgım Projem:

Yeni İngilizce Ögrenen Kişiler İçin Ögrendikleri Yeni Kelimeleri Ekleyerek Kendilerini Test Etmeleri İcin Hazırlanmış bir Web Uygulaması.
Kullanıcılar Sisteme Kayıt Olarak Verilerini Saklayıp istedikleri zaman kendilerini test edebiliyorlar.  

![englishword](https://user-images.githubusercontent.com/55949311/117519551-aad12100-afac-11eb-843e-027724f82099.gif)

```

### dependencies: 

 - get_it:
 - provider:
 - auto_size_text:
 - dio: 
 
```

## Projemin BackEnd Tarafı

Projemin BackEnd tarafını Node.js Express kullanarak hazırladım. DB içinde mongo Atlas Kullandım.                      
-Hazırladıgım Api 'ı [HEROKU](https://www.heroku.com) üzerinden Yayınladım.

-BackEnd Tarafı Kodlarına Erişmek İçin [buraya](https://github.com/aydnburak/Flutter-Web-English-Word-BackEnd)Tıklayınız.

### Kullandığım Api İsteklerim

| Method | İstek |
| ----------- | ----------- |
| POST | englishwordapi.herokuapp.com/api/users/login |
| POST | englishwordapi.herokuapp.com/api/users/register |
| GET | englishwordapi.herokuapp.com/api/word/:userID |
| POST | englishwordapi.herokuapp.com/api/word/addWord |




