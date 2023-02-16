import 'package:flutter/material.dart';

class FormLearn extends StatefulWidget {
  const FormLearn({Key? key}) : super(key: key);

  @override
  State<FormLearn> createState() => _FormLearnState();
}

class _FormLearnState extends State<FormLearn> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              autofillHints: [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
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
                    child: Text('a'),
                    value: 'v',
                  ),
                  DropdownMenuItem(
                    child: Text('b'),
                    value: 'v2',
                  ),
                  DropdownMenuItem(
                    child: Text('c'),
                    value: 'v3',
                  ),
                ],
                onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('save'))
          ],
        ),
      ),
    );
  }
}

String? isNotEmpty(String? data) {
  return (data?.isNotEmpty ?? false) ? null : 'Bu alan bos gecilemez';
}
