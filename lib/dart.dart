// //List<int> sayilar = [1, 2, 3, null]; dart dili buna imkan tanimaz cunku int deger bekler.
// List<int?> sayilar = [12, 34, null];

// int? controlMoney(int money) {
//   return money > 0 ? money : null;
// }

// //implements ile abstract sinifin birebir kopyasini olustururuz.

// abstract class IStudent {
//   final String name;
//   final int age;

//   void saySomething() {
//     print(age);
//   }

//   IStudent(this.name, this.age);
// }

// class Student implements IStudent {
//   final String name;
//   final int age;

//   Student(this.name, this.age);

//   @override
//   void saySomething() {
//     print(name);
//   }
// }

// class Ogrenci extends IStudent {
//   //Burada contructor olmasinin sebebi miras aldigi icin Ogrenci sinifida name ve age degiskenlerine otomatik olarak sahip olur
//   //Bu sebeple constructoru cagiririz.
//   Ogrenci(super.name, super.age);
// }

// enum Pc {
//   islemci,
//   ram,
//   ekranKarti,
// }

// //Dart dili private olan degisken ya da siniflari dosya yolu olarak private eder yani ayni dizindeki diger projeler bu sinifi kullanabilir.
// //encapsulation yapmak icin herbir sinifa ait ozel yollar yani ayri klasore koymaliyiz.

// void main(List<String> args) {
//   final islemci = Pc.islemci;

//   print(islemci);
//   print(islemci.name);
//   print(islemci.index);

//   final user = _User('ahmet', age: null);
//   if ((user.age ?? 0) < 18) {
//     //user.age yasi null ise sifir kabul eder
//   }

//   //2.yolu

//   if (user.age is int) {
//     if (user.age! < 18) {
//       //user.age int oldugunu kesinlestirildi
//     }
//   }
// }

// class _User {
//   final String Ad;
//   int? age;

//   _User(this.Ad, {this.age});
// }

// //Eger herhangi constructor yok sadece isini yaptirip geri dondurme islemi varsa burada mixin kullanilir.
// //iceride degisken tanimlama islemi falan yoktur

// mixin _StudentMixin {
//   void selamla(String name) {
//     print('Merhabalar ${name}');
//   }
// }

// class Kisiler with _StudentMixin {
//   final String isim;
//   final String soyIsim;

//   Kisiler(this.isim, this.soyIsim);
// }

String abc() {
  var counting = 0;
  for (var i = 1; i <= 1000000000; i++) {
    counting = i;
  }
  return '$counting ready....';
}

void main(List<String> args) {
  String x = abc();
  print(x);
}

st