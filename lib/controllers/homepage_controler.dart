import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  int _counter = 0;

  void counterChecker() {
    _counter++;
    notifyListeners();
  }

    int get counterNum => _counter;
}

