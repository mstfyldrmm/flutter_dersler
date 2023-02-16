import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chevron_left),
        actions: [
          Text(
            _ProjectString().baslikk,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _ProjectBaslik(baslik: _ProjectString().baslik),
            _spaceCreater(70),
            _ProjeTextField(labelText: 'Username'),
            _spaceCreater(30),
            _ProjeTextField(
              labelText: 'Password',
            ),
            _spaceCreater(60),
            _Data(data: _ProjectString().data),
            _spaceCreater(20),
            _ProjectButton()
          ],
        ),
      ),
    );
  }

  SizedBox _spaceCreater(double x) => SizedBox(
        height: x,
      );
}

class _ProjectButton extends StatelessWidget {
  const _ProjectButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'SIGN UP',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.white, shape: StadiumBorder()),
    );
  }
}

class _Data extends StatelessWidget {
  const _Data({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.start,
      textWidthBasis: TextWidthBasis.parent,
    );
  }
}

class _ProjectBaslik extends StatelessWidget {
  const _ProjectBaslik({
    Key? key,
    required this.baslik,
  }) : super(key: key);

  final String baslik;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 240),
      child: Text(
        baslik,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

class _ProjeTextField extends StatelessWidget {
  const _ProjeTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        autofillHints: [AutofillHints.username],
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ));
  }
}

class _ProjectString {
  final String baslik = 'Sign Up';
  final String baslikk = 'Sign in';
  final String data =
      'By clicking sign up, you are agree to Terms & Conditions and that you have read our Privacy Policy';
}
