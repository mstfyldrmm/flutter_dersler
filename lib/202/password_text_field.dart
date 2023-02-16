import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  String _obsCharecter = '&';
  String _userName = "User Name";
  String _password = 'password';

  void _changeIsSecure() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.newUsername],
            decoration: InputDecoration(hintText: _userName),
          ),
          _iconVisibility(),
        ],
      ),
    );
  }

  TextField _iconVisibility() {
    return TextField(
          obscureText: _isSecure, //textfield icerigini gizler
          obscuringCharacter: _obsCharecter,
          keyboardType: TextInputType.visiblePassword,
          autofillHints: [AutofillHints.password],
          decoration: InputDecoration(
              hintText: _password,
              suffixIcon: IconButton(
                  onPressed: () {
                    _changeIsSecure();
                  },
                  icon: _isSecure
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off))),
        );
  }
}
