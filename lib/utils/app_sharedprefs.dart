import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPrefs {
  static const String _AUTH_TOKEN = 'authtoken';
  static const String USER_JSON = 'user_json_encoded';
  static const String UID = 'uid';

  static late SharedPreferences _instance;

  static Future<void> init() async {
    ///call this at startup (in main.dart)
    _instance = await SharedPreferences.getInstance();
  }

  static Future<SharedPreferences> getInstance() async =>
      await SharedPreferences.getInstance();

  static bool _saveAuthToken(String? authToken) {
    _instance.setString(_AUTH_TOKEN, authToken ?? '');
    return true;
  }

  static String? getAuthToken() {
    try {
      return _instance.getString(_AUTH_TOKEN);
    } catch (e) {
      return null;
    }
  }

  static bool isAuthenticated() {
    String? authtoken = getAuthToken();
    return authtoken != null && authtoken.isNotEmpty;
  }

  static Future<bool> removeAllPrefs() async {
    return _instance.clear();
  }

  static void saveAuthToken(String token) {
    _saveAuthToken(token);
  }

  static Future<bool> removeAllPrefsAndNotifiers() async {
    return await _instance.clear();
  }
}
