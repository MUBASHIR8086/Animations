import 'package:flutter/material.dart';

class Textprovider extends ChangeNotifier {
  bool isloged = false;

  void textsize() async {
    isloged = !isloged;
    notifyListeners();
  }
}
