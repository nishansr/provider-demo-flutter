import 'package:flutter/material.dart';

class ProgressValue extends ChangeNotifier {
  double currentvalue = 0.0;
  void updateProgress(value) {
    currentvalue = value;
    notifyListeners();
  }
}
