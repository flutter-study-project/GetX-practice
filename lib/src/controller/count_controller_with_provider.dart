import 'package:flutter/material.dart';

class CountConrollerWithProvider extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }

  void decrease() {
    count--;
    notifyListeners();
  }
}
