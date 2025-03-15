import 'package:flutter/material.dart';

class Animationprovider extends ChangeNotifier {
  bool islogedin = false;

  void anisize() async {
    islogedin = !islogedin;
    notifyListeners();
  }
}
