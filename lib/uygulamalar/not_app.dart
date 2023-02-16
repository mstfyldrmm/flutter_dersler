import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_giris/101/ders_18.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);
  final String title = 'Create your First Note';
  final String _description = 'Add a Note';
  final String _createNote = 'Create a Note';
  final String _import = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PagePaddingItem.horizontalPadding,
        child: Column(
          children: [
            Image.asset("assets/png/indir.png"),
            TitleWidget(title: title),
            Padding(
              padding: PagePaddingItem.verticalPadding,
              child: _SubTitleWidget(
                title: _description * 10,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )),
            TextButton(onPressed: () {}, child: Text(_import)),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

//Text Widget ortada olmasini saglar
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);

  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700));
  }
}

class PagePaddingItem {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class PngImage extends StatelessWidget {
  final String name;
  const PngImage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}

class ImageItem {
  final String appleWithBook = "indir";
}
