import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTexFieldOne = FocusNode();
  FocusNode focusNodeTexFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return AnimatedContainer(
                  duration: Duration(seconds: 1),
                  color: Colors.red[100 *
                      (currentLength ?? 0) ~/
                      2], //current length renk yogunlugunu sifirdan baslatip text icerigi girildikce koyulastirir.
                  height: 10,
                  width: 10.0 * (currentLength ?? 0),
                );
              },
              maxLength: 20,
              focusNode: focusNodeTexFieldOne,
              autofillHints: [AutofillHints.email],
              inputFormatters: [TextProjectInputFormatter()._formatter],
              textInputAction:
                  TextInputAction.next, //Diger text fielda gecmeyi saglar
              keyboardType:
                  TextInputType //mail ile alakali seyleri klavyeden ongorur.
                      .emailAddress, //Mail adres tipi verince klavyede @ isareti cikar
              decoration: _ProjectDecoration()
                  ._decoration, //outlined kutu icerisinde olmasini saglar.
            ),
            TextField(
              focusNode: focusNodeTexFieldTwo,
            )
          ],
        ));
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    //klavyeden a basmayi yasaklar
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}

class _ProjectDecoration {
  final InputDecoration _decoration = InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: 'Mail',
      filled: true,
      fillColor: Colors.transparent);
}
