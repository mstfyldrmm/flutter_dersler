import 'dart:io';

import 'package:flutter_giris/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileItem {
  bool? downLoadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launch(path);
  }
}

class FileDownload implements IFileItem {
  @override
  bool? downLoadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownLoadException();
    return true;
  }

  void selamla() {}

  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}

class SmsDownload implements IFileItem {
  @override
  bool? downLoadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownLoadException();
    return true;
  }

  @override
  Future<void> toShare(String path) async {
    // TODO: implement toShare
    await launch("sms:$path");
  }
}
//Sharemixin i, sadece IFileItem sinifindan "EXTENDS" edilen siniflarda kullanilabilir
//implements edilen siniflarda kullanima izin verilmez cunku bu sinifin kopyasini olusturuldu. Disaridan guc kazandirmak mumkun degil.

class Ornek extends IFileItem with ShareMixin{
  @override
  bool? downLoadItem(FileItem? fileItem) {
    // TODO: implement downLoadItem
    throw UnimplementedError();
  }

  

}

mixin ShareMixin on IFileItem{
  void toShowFile() {}

}






class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}


//Extends--> O sinifin ozelliklerini alip uzerine kendi ozelliklerini katar.
//implements ile sinifin kopyasini olustururuz.