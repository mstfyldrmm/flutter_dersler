import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDefaultValues();
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);

    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  Future<void> getDefaultValues() async {
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    _onChangeValue(counter.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),
      ),

      //kullanici yeni bir deger girdigi zaman onceki degeri gosterme
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_saveValueButton(), _removeValueButton()],
      ),
      body: Column(
        children: [
          TextField(onChanged: ((value) {
            _onChangeValue(value);
          }))
        ],
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        changeIsLoading();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
        changeIsLoading();
      },
      child: Icon(Icons.save),
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        changeIsLoading();
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('counter');
        changeIsLoading();
      },
      child: Icon(Icons.remove),
    );
  }
}

//cache(onbellek) : Kullanicinin web sayfasi, mobil uygulama vb ilk kez ziyaret ettikten sonra,
//cihazimizda depolananan dosyalar, komut dosyalari, resimler ve diger multimedyalardir.
//Bu veriler daha sonra bu ziyaretleri tekrarladigimizda hizli bir sekilde veri yuklemek icin kullanilir.

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeIsLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
