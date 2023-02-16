import 'package:flutter/material.dart';
import 'package:flutter_giris/101/responsive/desktopBody.dart';
import 'package:flutter_giris/101/responsive/mobileBody.dart';
import 'package:flutter_giris/101/responsive/responsive_layout.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
          desktopBody: MyDesktopBody(), mobileBody: MyMobileBody()),
    );
  }
}