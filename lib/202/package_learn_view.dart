import 'package:flutter/material.dart';
import 'package:flutter_giris/202/package/launch_manager.dart';
import 'package:flutter_giris/202/package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchURL('x');
          },
          backgroundColor:
              Theme.of(context).buttonTheme.colorScheme?.onPrimary),
      body: LoadingBar(
        size: 80,
      ),
    );
  }

  @override
  void bos() {
    // bu sekilde metodu tanimlayabiliriz
  }
}
