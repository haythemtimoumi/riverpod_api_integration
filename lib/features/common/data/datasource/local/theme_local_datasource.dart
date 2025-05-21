import 'package:shared_preferences/shared_preferences.dart';

class ThemeLocalDataSource {
  static const _themeModeKey = 'theme_mode';

  Future<void> saveThemeMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeModeKey, mode);
  }

  Future<String?> getSavedThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_themeModeKey);
  }
}
