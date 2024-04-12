import 'package:flutter/material.dart';
import 'package:test/themes/dark_theme.dart'; // Import your dark theme
import 'package:test/themes/light_mode.dart'; // Import your light theme

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode; // Initialize with light mode
  ThemeData get themeData => _themeData; // Use getter to access _themeData
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData; // Use _themeData to assign new theme
    notifyListeners();
  }

  void toggleTheme() {
    // Toggle between light and dark themes
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
