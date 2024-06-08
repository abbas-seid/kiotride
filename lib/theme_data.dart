import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Color(0xECFFFFFF),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.white,
      secondary: Colors.green.withOpacity(0.9),
      onSecondary: Colors.blue.withOpacity(0.2),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: Color(0xff34586E),
    ));

ThemeData darkmode = ThemeData(
    scaffoldBackgroundColor: Color(0xFF121212),
    drawerTheme: DrawerThemeData(backgroundColor: Color(0xFF121212)),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
    ),
    colorScheme: ColorScheme.dark(
      background: Color(0xFFFFFFFF),
      primary: Color(0xFFFFFFFF),
      secondary: Colors.black.withOpacity(0.9),
      onSecondary: Colors.white.withOpacity(0.2),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: Color(0xFFFFFFFF),
    ));

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightmode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      themeData = darkmode;
    } else {
      themeData = lightmode;
    }
  }
}
