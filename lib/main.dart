import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_giris/101/provider/ekran.dart';
import 'package:flutter_giris/101/provider/state.dart';
import 'package:flutter_giris/202/model_learn_view.dart';
import 'package:flutter_giris/202/tab_learn.dart';
import 'package:flutter_giris/202/tab_learn2.dart';
import 'package:flutter_giris/202/tab_learn3.dart';
import 'package:flutter_giris/202/theme/light_theme.dart';
import 'package:flutter_giris/demos/color_demos.dart';
import 'package:flutter_giris/demos/color_demos_life_circular.dart';
import 'package:flutter_giris/101/ders_13.dart';
import 'package:flutter_giris/101/ders_15.dart';
import 'package:flutter_giris/101/ders_16.dart';
import 'package:flutter_giris/101/ders_19.dart';
import 'package:flutter_giris/101/ders_21.dart';
import 'package:flutter_giris/101/ders_24.dart';
import 'package:flutter_giris/101/ders_26.dart';
import 'package:flutter_giris/101/ders_27.dart';
import 'package:flutter_giris/101/ders_29.dart';
import 'package:flutter_giris/101/ders_30.dart';
import 'package:flutter_giris/101/ders_31.dart';
import 'package:flutter_giris/101/ders_32.dart';
import 'package:flutter_giris/101/ders_33.dart';
import 'package:flutter_giris/101/ders_5.dart';
import 'package:flutter_giris/101/ders_8.dart';
import 'package:flutter_giris/101/ders_9.dart';
import 'package:flutter_giris/101/tekrar.dart';
import 'package:flutter_giris/demos/iletisimPage.dart';
import 'package:flutter_giris/service/service_learn_view.dart';
import 'package:flutter_giris/service/service_post_learb_view.dart';
import 'package:flutter_giris/service/try_catch_learn.dart';
import 'package:flutter_giris/uygulamalar/BottomNavigationApp.dart';
import 'package:flutter_giris/uygulamalar/CokluEkran.dart';
import 'package:flutter_giris/uygulamalar/KullaniciAdiSifre.dart';
import 'package:flutter_giris/uygulamalar/MyCollectionApp.dart';
import 'package:flutter_giris/uygulamalar/NavigatorGirisApp.dart';
import 'package:flutter_giris/uygulamalar/Ornek.dart';
import 'package:flutter_giris/uygulamalar/PaymentApp.dart';
import 'package:flutter_giris/uygulamalar/Service_app.dart';
import 'package:flutter_giris/uygulamalar/SideBarApp.dart';
import 'package:flutter_giris/uygulamalar/StartUpNameGenarator.dart';
import 'package:flutter_giris/uygulamalar/_TabBarApp.dart';
import 'package:flutter_giris/uygulamalar/cv_app.dart';
import 'package:provider/provider.dart';
import '101/ders_11.dart';
import '101/ders_28.dart';
import '101/ders_35.dart';
import '101/ders_36.dart';
import '101/ders_7.dart';
import '101/responsive/statefull_manage2.dart';
import '101/statefull_some_widgets.dart';
import '101/statefull_widget.dart';
import '202/animated_learn.dart';
import '202/cache/shared_learn_cache.dart';
import '202/form_learn_view.dart';
import '202/image_learn_202.dart';
import '202/oop_learn_view.dart';
import '202/package_learn_view.dart';
import '202/password_text_field.dart';
import '202/state_manage/state_management_learn_view.dart';
import '202/theme_learn_view.dart';
import '202/widget_size_enum_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: LightTheme().theme,
        // theme: ThemeData.dark().copyWith(
        //     progressIndicatorTheme:
        //         ProgressIndicatorThemeData(color: Colors.white),
        //     errorColor: Renkler().bermuda,
        //     appBarTheme: const AppBarTheme(
        //       centerTitle: true,
        //       systemOverlayStyle: SystemUiOverlayStyle.light,
        //       backgroundColor: Colors.transparent,
        //       elevation: 0,
        //       //burada appBar dan olusan tum widgetlar icin standart ozellikler tanimlandi
        //     )),
        home: SomeStatefullWidget());
  }
}
