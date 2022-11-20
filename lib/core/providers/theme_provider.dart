import 'package:flutter/cupertino.dart';

class ChangeTheme extends ChangeNotifier {
  bool _isDark = true;
  bool get isDark => _isDark;
  themeChange() {
    _isDark = !isDark;
    notifyListeners();
  }
}
