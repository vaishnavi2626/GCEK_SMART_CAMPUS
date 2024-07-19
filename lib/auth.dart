
import 'package:shared_preferences/shared_preferences.dart';
class AuthManager {
  static const String _loggedInKey = 'isLoggedIn';

  // Method to check if the user is already logged in
  static Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_loggedInKey) ?? false;
  }

  // Method to store the user's login status
  static Future<void> setLoggedIn(bool loggedIn) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_loggedInKey, loggedIn);
  }
}
