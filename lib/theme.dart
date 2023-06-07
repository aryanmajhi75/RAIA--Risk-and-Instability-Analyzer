import 'package:flutter/material.dart';
import 'package:raia/constants.dart';

class AppTheme {
  //Theme settingsfor light theme
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: lightColor,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: darkColor,
          decoration: TextDecoration.none,
          fontSize: 50,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: darkColor,
          decoration: TextDecoration.none,
          fontSize: 24,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        selectedItemColor: darkColor,
        unselectedItemColor: greyColor,
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          size: 32,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 30,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(lightColor),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: darkColor,
                width: 2,
              ),
            ),
          ),
          iconColor: MaterialStatePropertyAll(darkColor),
          elevation: const MaterialStatePropertyAll(0),
          iconSize: const MaterialStatePropertyAll(30),
          shadowColor: MaterialStatePropertyAll(greyColor),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  //Theme settingsfor dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: darkColor,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: lightColor,
          decoration: TextDecoration.none,
          fontSize: 50,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: lightColor,
          decoration: TextDecoration.none,
          fontSize: 24,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkColor,
        elevation: 0,
        unselectedIconTheme: IconThemeData(
          color: lightgreyColor,
          size: 30,
        ),
        selectedIconTheme: IconThemeData(
          size: 30,
          color: lightColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(darkColor),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: lightColor,
                width: 2,
              ),
            ),
          ),
          iconColor: MaterialStatePropertyAll(lightColor),
          elevation: const MaterialStatePropertyAll(0),
          iconSize: const MaterialStatePropertyAll(30),
          shadowColor: MaterialStatePropertyAll(greyColor),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
