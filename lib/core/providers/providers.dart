import 'package:fooddelevery/core/providers/onboardprovider.dart';
import 'package:fooddelevery/core/providers/page_provider.dart';
import 'package:fooddelevery/core/providers/setting_page_provider.dart';
import 'package:fooddelevery/core/providers/theme_provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

class Appproviders {
  static Appproviders? _instence;
  static Appproviders? get instence {
    _instence ??= Appproviders._init();
    return _instence;
  }

  Appproviders._init();

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ChangeTheme(),
    ),
    ChangeNotifierProvider(
      create: (context) => OnBoardProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => PageProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SettingProvider(),
    ),
  ];
}
