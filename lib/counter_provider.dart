import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int count = 0;

  void add() {
    count++;
    print("flutter build: $count");
    notifyListeners();
  }
}
