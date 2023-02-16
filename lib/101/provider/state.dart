import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  String sehir = 'Istanbul';
  String ulke = 'Turkiye';

  void newCity(String city) {
    sehir = city;
    notifyListeners(); //bu metod ile provideri dinleyen widgetlara haber veriririz.
  }
}

//Burada StateData verilerine ulasan widgetlar, degerleri degistiremez. Cunku class herhangi bir yasam belirtisi yok
//Eger class a kendini dinleyenlerle haberlesme imkani tanirsak degistirme sansi olur. Bu ozellikleri extend ya da with ile yapariz