import 'package:flutter/foundation.dart';

class SettingProvider extends ChangeNotifier {
  int _p = 0;
  int get page => _p;
  changePage(int i) {
    _p = i;
    notifyListeners();
  }
}
