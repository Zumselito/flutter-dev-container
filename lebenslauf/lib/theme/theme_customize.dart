import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// LightTheme
const lightPrimaryColor = Color(0xff78b0a0);
const lightSecondaryColor = Color(0xffC98C81);
const lightTertiaryColor = Color(0xffefdab9);
const lightPrimaryTextColor = Color(0xffEA6B47);
const lightSecondaryTextColor = Color(0xff3b9b6d);
const lightTertiaryTextColor = Color(0xff3F78A2);
const lightQuaternaryTextColor = Color(0xffDDA032);
const lightSurfaceColor = Color(0xaadddddd);

// DarkTheme
const darkPrimaryColor = Color(0xffDDA032);
const darkSecondaryColor = Color(0xff3b9b6d);
const darkTertiaryColor = Color(0xffEA6B47);
const darkQuaternaryColor = Color(0xff3F78A2);
const darkPrimaryTextColor = Color(0xffefdab9);
const darkSecondaryTextColor = Color(0xff78b0a0);
const darkTertiaryTextColor = Color(0xffC98C81);
const darkSurfaceColor = Color(0xaa181214);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        primary: lightPrimaryColor,
        secondary: lightSecondaryColor,
        tertiary: lightTertiaryColor,
        seedColor: Colors.lime,
        surface: lightSurfaceColor),
    primaryColor: Colors.lime,
    textTheme: GoogleFonts.ibmPlexMonoTextTheme(TextTheme(
        bodyLarge: TextStyle(color: lightPrimaryTextColor),
        bodyMedium: TextStyle(
            color: lightPrimaryTextColor, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(color: lightPrimaryTextColor))),
    appBarTheme: AppBarTheme(backgroundColor: lightPrimaryColor),
    navigationRailTheme: NavigationRailThemeData(
        indicatorColor: lightQuaternaryTextColor,
        selectedLabelTextStyle: TextStyle(color: lightQuaternaryTextColor),
        unselectedIconTheme: IconThemeData(color: lightSecondaryTextColor),
        unselectedLabelTextStyle: TextStyle(color: lightSecondaryTextColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            iconColor: lightTertiaryTextColor, elevation: 0)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: lightQuaternaryTextColor,
        selectedIconTheme: IconThemeData(color: lightQuaternaryTextColor),
        unselectedItemColor: lightSecondaryTextColor,
        unselectedIconTheme: IconThemeData(color: lightSecondaryTextColor)),
    scaffoldBackgroundColor: lightSurfaceColor,
    useMaterial3: true);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: Color(0xff181214),
        primary: darkPrimaryColor,
        secondary: darkSecondaryColor,
        tertiary: darkTertiaryColor,
        surface: darkSurfaceColor),
    textTheme: GoogleFonts.ibmPlexMonoTextTheme(TextTheme(
        bodyLarge: TextStyle(color: darkSecondaryTextColor),
        bodyMedium: TextStyle(color: darkPrimaryTextColor),
        bodySmall: TextStyle(color: darkPrimaryTextColor))),
    appBarTheme: AppBarTheme(backgroundColor: darkPrimaryColor),
    navigationRailTheme: NavigationRailThemeData(
        indicatorColor: darkPrimaryColor,
        selectedLabelTextStyle: TextStyle(color: darkPrimaryColor),
        unselectedIconTheme: IconThemeData(color: darkPrimaryTextColor),
        unselectedLabelTextStyle: TextStyle(color: darkPrimaryTextColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            iconColor: darkSecondaryColor, elevation: 0)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: darkPrimaryColor,
        selectedIconTheme: IconThemeData(color: darkPrimaryColor),
        unselectedItemColor: darkPrimaryTextColor,
        unselectedIconTheme: IconThemeData(color: darkPrimaryTextColor)),
    scaffoldBackgroundColor: darkSurfaceColor,
    useMaterial3: true);
