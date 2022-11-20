import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _page = 0;
  int get page => _page;
  changePage(int i) {
    _page = i;
    notifyListeners();
  }
}
