import 'package:flutter/material.dart';
import 'package:flutter_giris/101/ders_31.dart';
import 'package:flutter_giris/101/ders_34.dart';

class Tekrar extends StatefulWidget {
  const Tekrar({Key? key}) : super(key: key);
  @override
  State<Tekrar> createState() => _TekrarState();
}

class _TekrarState extends State<Tekrar> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        children: [
          TextFormField(
            autofillHints: [AutofillHints.email],
            decoration: InputDecoration(helperText: 'Email giriniz'),
            key: _key,
            validator: (value) {
              return (value?.isNotEmpty ?? false)
                  ? null
                  : 'Bu alan bos gecilemez';
            },
          ),
          DropdownButtonFormField<String>(
              validator: isNotEmpty,
              items: [
                DropdownMenuItem(
                  child: Text('A'),
                  value: 'v',
                ),
                DropdownMenuItem(
                  child: Text('B'),
                  value: 'v2',
                ),
                DropdownMenuItem(
                  child: Text('C'),
                  value: 'v3',
                ),
                DropdownMenuItem(
                  child: Text('D'),
                  value: 'v4',
                ),
              ],
              onChanged: (value) {}),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('okey');
                }
              },
              child: Text('Submit'))
        ],
      )),
    );
  }

//final const farki : final uygulama calisirken runtime daki son degeri alirken
//const : Kod kompile oldugu anda aldigi deger neyse odur.
}

String? isNotEmpty(String? data) {
  return (data?.isNotEmpty ?? false) ? null : 'Bu alan bos gecilemez';
}
