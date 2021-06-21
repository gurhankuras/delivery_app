import 'package:flutter/material.dart';

class HomeVM extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void changePage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
