import 'package:flutter/material.dart';

class IletisimPage extends StatelessWidget {
  const IletisimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Iletisim Sayfasi'),
        titleTextStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
            fontSize: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _ProjectTextField(),
            _ProjectTextField(),
            _ProjectTextField(),
            _ProjectTextField()
          ],
        ),
      ),
    );
  }
}

class _ProjectTextField extends StatelessWidget {
  const _ProjectTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        autocorrect: true,
        cursorColor: Colors.white,
        textAlign: TextAlign.start,
        decoration: _ProjectDecoration()._decoration,
        readOnly: true,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontStyle: FontStyle.italic));
  }
}

class _ProjectDecoration {
  InputDecoration _decoration = InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: 'Empty',
      filled: true,
      fillColor: Colors.transparent);
}
