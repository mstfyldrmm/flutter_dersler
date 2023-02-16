//dart dili class icerisindeki degiskenleri initialize etmeyi mecbur kilar
// 3 farkli initialize yontemi vardir

//Biz degiskenlere null olma ihtimali verdigimiz icin hata vermez
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.userId, this.body, this.id, this.title);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

//sinif 3 un isimlendirilmis argumanli halidir.
class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _body = body,
        _title = title;
}

//Servisten veri alinirsa(orn : internet) null gelme ihtimalini goz onunde bulundurmaliyiz.
class PostModel6 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel6({this.userId, this.id, this.title, this.body});
}

class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel7({this.userId, this.id, this.title, this.body});

  PostModel7 copywith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel7(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        body: body ?? this.body,
        title: title ?? this.title);
  }

  //Burada bu class tan olusan nesnenin bir kopyasini olustururken sadece istenilen ozellikleri degistirmeye imkan tanir
}
