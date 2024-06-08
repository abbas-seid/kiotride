import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Color(0xECFFFFFF),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff34586E),
        )),
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Color(0xff34586E),
      secondary: Color(0xfffffffff),
      onSecondary: Colors.white,
      surface: Color(0xFFF7CB2D),
      onSurface: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.black, // Change label color here
      ),
    ),
    listTileTheme: ListTileThemeData(iconColor: Colors.white));

ThemeData darkmode = ThemeData(
    scaffoldBackgroundColor: Color(0xFF121212),
    drawerTheme: DrawerThemeData(backgroundColor: Color(0xFF121212)),
    appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF121212),
        iconTheme: IconThemeData(
          color: Color(0xff34586E),
        )),
    colorScheme: ColorScheme.dark(
      background: Color(0xFFFFFFFF),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF121212),
      onSecondary: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.white, // Change label color here
      ),
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
