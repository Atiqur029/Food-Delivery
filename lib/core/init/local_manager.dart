import 'package:fooddelevery/core/init/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalManager {
  static final LocalManager _instence = LocalManager._init();
  SharedPreferences? _preferences;
  static LocalManager get instence => _instence;

  LocalManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static Future getinstenceinit() async {
    instence._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clear() async {
    await _preferences?.clear();
  }

  Future<void> setStringValue(LocalManagerKeys key, String value) async {
    await _preferences?.setString(key.toString(), value);
  }

  Future<void> setBoolValue(LocalManagerKeys key, value) async {
    await _preferences?.setBool(key.toString(), value);
  }

  Future<void> setIntValue(LocalManagerKeys key, int value) async {
    await _preferences?.setInt(key.toString(), value);
  }

  Future<String> getStringValue(LocalManagerKeys key) async =>
      _preferences?.getString(key.toString()) ?? 'Not Found';

  Future<bool> getBoolValue(LocalManagerKeys key) async =>
      _preferences?.getBool(key.toString()) ?? false;

  Future<int> getIntValue(LocalManagerKeys key) async =>
      _preferences?.getInt(key.toString()) ?? -1;
}
