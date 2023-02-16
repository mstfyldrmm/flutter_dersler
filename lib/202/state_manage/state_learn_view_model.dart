import 'package:flutter/material.dart';
import 'package:flutter_giris/202/state_manage/state_management_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  bool isVisibility = true;
  bool isOpacity = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeVisibility() {
    setState(() {
      isVisibility = !isVisibility;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
