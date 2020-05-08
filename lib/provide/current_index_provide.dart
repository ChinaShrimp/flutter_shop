import 'package:flutter/material.dart';

class CurrentIndexProvide with ChangeNotifier {
  int currentIndex;

  changeIndex(index) {
    currentIndex = index;
    notifyListeners();
  }
}
