import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencePath {
  Future<void> setUserDataInSharePrefrences(String value, String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
    return;
  }

  Future<String> getUserDataInSharePrefrences(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? data = prefs.getString(key);
    return data ?? "";
  }

  String Get(String key) {
    SharedPreferences.getInstance().then((value) {
      String? val = value.getString(key);
      return val ?? "";
    });
    return "";
  }

  Future<void> setDefault(String key, String value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(key, value);
      return;
    } catch (e) {
      return;
    }
  }
}
