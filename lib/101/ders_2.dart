import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({Key? key}) : super(key: key);
  final String sahip = 'Neset ERTAS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Cahildim dunyanin rengine kandim :',
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Seni ilelebet benimsin sandim :',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      fontStyle: FontStyle.italic,
      color: Colors.red,
      decoration: TextDecoration.none,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
