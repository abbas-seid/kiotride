import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  scaffoldBackgroundColor: Color(0xECFFFFFF),
  drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Color(0xff34586E),
      ),
      titleTextStyle: TextStyle(color: Color(0xff34586E))),
  colorScheme: ColorScheme.light(
    background: Colors.black,
    primary: Color(0xff34586E),
    secondary: Color(0xfffffffff),
    onSecondary: Colors.white,
    surface: Color(0xFFF7CB2D),
    onSurface: Colors.white,
    shadow: Colors.grey.withOpacity(0.3),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white, // Change label color here
    ),
  ),
  listTileTheme: ListTileThemeData(
      tileColor: Colors.white,
      iconColor: Color(0xff34586E),
      textColor: Color(0xff34586E)),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Color(0xff34586E); // Selected color
      }
      return Colors.transparent; // Unselected color
    }),
    side: BorderSide(
      color: Colors.black, // Change border line color here
      width: 2, // Change border line width here
    ),
  ),
);

ThemeData darkmode = ThemeData(
  scaffoldBackgroundColor: Color(0xFF121212),
  drawerTheme: DrawerThemeData(backgroundColor: Color(0xFF121212)),
  appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFf000000),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(color: Colors.white)),
  colorScheme: ColorScheme.dark(
    background: Color(0xFFFFFFFF),
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFF121212),
    onSecondary: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    shadow: Colors.white.withOpacity(0.4),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.black,
    ),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: Color(0xFF121212),
    iconColor: Color(0xFFFFFFFF),
    textColor: Colors.white,
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white; // Selected color
      }
      return Colors.transparent;
    }),
    side: BorderSide(
      color: Colors.white, // Change border line color here
      width: 2, // Change border line width here
    ),
  ),
);

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
