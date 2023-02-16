import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  void bos();
}



/*
  mixin LaunchMixin on Widget{ 
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

on widget oldugu zaman sadece widgetlar ile kullanilabilir.
mixin icerisine bir metod govdesi verip ana projede metodu tanimlayabiliriz 
*/