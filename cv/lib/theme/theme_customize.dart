import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// GeneralTheme
// const fonts = ...; - Additional fonts like exo 2,...

// LightTheme
const lightPrimaryColor = Color(0xffC98C81);
const lightSecondaryColor = Color(0xff78b0a0);
const lightTertiaryColor = Color(0xffefdab9);
const lightPrimaryTransparentColor = Color(0x44C98C81);
const lightPrimaryTextColor = Color(0xffEA6B47);
const lightSecondaryTextColor = Color(0xff3b9b6d);
const lightTertiaryTextColor = Color(0xff3f78A2);
const lightQuaternaryTextColor = Color(0xffDDA032);
const lightAppBackgroundeColor = Color(0xaaeeeeee);
const lightPrimaryContainerBackgroundeColor = Color(0xaaffffff);
const lightSecondaryContainerBackgroundeColor = Color(0x113b9b6d);
const lightTertiaryContainerBackgroundeColor = Color(0x113f78A2);

// DarkTheme
const darkPrimaryColor = Color(0xffDDA032);
const darkSecondaryColor = Color(0xff3b9b6d);
const darkTertiaryColor = Color(0xffEA6B47);
const darkQuaternaryColor = Color(0xff3f78A2);
const darkPrimaryTransparentColor = Color(0x22EA6B47);
const darkPrimaryTextColor = Color(0xffefdab9);
const darkSecondaryTextColor = Color(0xff78b0a0);
const darkTertiaryTextColor = Color(0xffC98C81);
const darkAppBackgroundColor = Color(0xaa181214);
const darkPrimaryContainerBackgroundColor = Color(0xcc181214);
const darkSecondaryContainerBackgroundColor = Color(0x11EA6B47);
const darkTertiaryContainerBackgroundColor = Color(0x113f78A2);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: lightTertiaryColor,
        // Options
        inversePrimary: lightPrimaryTransparentColor,
        primary: lightPrimaryColor,
        primaryContainer: lightPrimaryContainerBackgroundeColor,
        secondary: lightSecondaryColor,
        secondaryContainer: lightSecondaryContainerBackgroundeColor,
        shadow: Colors.transparent,
        tertiary: lightTertiaryColor,
        tertiaryContainer: lightTertiaryContainerBackgroundeColor,
        surface: lightAppBackgroundeColor),
    textTheme: GoogleFonts.ibmPlexMonoTextTheme(TextTheme(
        bodyLarge: TextStyle(color: lightPrimaryTextColor),
        bodyMedium: TextStyle(color: lightPrimaryTextColor),
        bodySmall: TextStyle(color: lightPrimaryTextColor),
        displayLarge: TextStyle(color: lightPrimaryTextColor),
        displayMedium: TextStyle(color: lightPrimaryTextColor),
        displaySmall: TextStyle(color: lightPrimaryTextColor),
        headlineLarge: TextStyle(color: lightPrimaryTextColor),
        headlineMedium: TextStyle(color: lightPrimaryTextColor),
        headlineSmall: TextStyle(color: lightPrimaryTextColor),
        labelLarge: TextStyle(color: lightPrimaryTextColor),
        labelMedium: TextStyle(color: lightPrimaryTextColor),
        labelSmall: TextStyle(color: lightPrimaryTextColor),
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: lightPrimaryTextColor),
        titleSmall: TextStyle(color: lightPrimaryTextColor))),
    iconTheme: IconThemeData(color: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: lightSecondaryColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white)),
    navigationRailTheme: NavigationRailThemeData(
        indicatorColor: lightQuaternaryTextColor,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelTextStyle: TextStyle(
            color: lightQuaternaryTextColor, fontWeight: FontWeight.w500),
        unselectedIconTheme: IconThemeData(color: lightSecondaryTextColor),
        unselectedLabelTextStyle: TextStyle(
            color: lightSecondaryTextColor, fontWeight: FontWeight.w500)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            iconColor: lightPrimaryTextColor,
            elevation: 0,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryContainerBackgroundeColor,
        selectedItemColor: lightQuaternaryTextColor,
        selectedIconTheme: IconThemeData(color: lightQuaternaryTextColor),
        unselectedItemColor: lightSecondaryTextColor,
        unselectedIconTheme: IconThemeData(color: lightSecondaryTextColor)),
    scaffoldBackgroundColor: lightAppBackgroundeColor,
    useMaterial3: true);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Color(0xff181214),
      // Options
      error: darkQuaternaryColor,
      errorContainer: darkQuaternaryColor,
      inversePrimary: darkPrimaryTransparentColor,
      inverseSurface: darkQuaternaryColor,
      onError: darkQuaternaryColor,
      onInverseSurface: darkQuaternaryColor,
      onPrimary: darkQuaternaryColor,
      onErrorContainer: darkQuaternaryColor,
      onPrimaryContainer: darkPrimaryContainerBackgroundColor,
      onPrimaryFixed: darkQuaternaryColor,
      onPrimaryFixedVariant: darkQuaternaryColor,
      onSecondary: darkQuaternaryColor,
      onSecondaryContainer:
          darkPrimaryTextColor, // Active NavigationRailDestination icon
      onSecondaryFixed: darkQuaternaryColor,
      onSecondaryFixedVariant: darkQuaternaryColor,
      onSurface: darkAppBackgroundColor,
      onSurfaceVariant: darkQuaternaryColor,
      onTertiary: darkQuaternaryColor,
      onTertiaryContainer: darkTertiaryContainerBackgroundColor,
      onTertiaryFixed: darkQuaternaryColor,
      onTertiaryFixedVariant: darkQuaternaryColor,
      outline: darkQuaternaryColor,
      outlineVariant: darkQuaternaryColor,
      primary: darkPrimaryColor,
      primaryContainer: darkPrimaryContainerBackgroundColor,
      primaryFixed: darkQuaternaryColor,
      primaryFixedDim: darkQuaternaryColor,
      shadow: Colors.transparent,
      secondary: darkSecondaryColor,
      secondaryContainer: darkSecondaryContainerBackgroundColor,
      secondaryFixed: darkQuaternaryColor,
      secondaryFixedDim: darkQuaternaryColor,
      scrim: darkQuaternaryColor,
      surface: darkAppBackgroundColor,
      surfaceBright: darkQuaternaryColor,
      surfaceContainer: darkQuaternaryColor,
      surfaceContainerHigh: darkQuaternaryColor,
      surfaceContainerHighest: darkQuaternaryColor,
      surfaceContainerLow: darkAppBackgroundColor, // ElevatedButton background
      surfaceContainerLowest: darkQuaternaryColor,
      surfaceDim: darkQuaternaryColor,
      surfaceTint: darkQuaternaryColor,
      tertiary: darkTertiaryColor,
      tertiaryContainer: darkTertiaryContainerBackgroundColor,
      tertiaryFixed: darkQuaternaryColor,
      tertiaryFixedDim: darkQuaternaryColor,
    ),
    textTheme: GoogleFonts.ibmPlexMonoTextTheme(TextTheme(
        bodyLarge: TextStyle(color: darkSecondaryColor),
        bodyMedium: TextStyle(color: darkPrimaryTextColor),
        bodySmall: TextStyle(color: darkQuaternaryColor),
        displayLarge: TextStyle(color: darkSecondaryColor),
        displayMedium: TextStyle(color: darkPrimaryTextColor),
        displaySmall: TextStyle(color: darkQuaternaryColor),
        headlineLarge: TextStyle(color: darkSecondaryColor),
        headlineMedium: TextStyle(color: darkPrimaryColor),
        headlineSmall: TextStyle(color: darkQuaternaryColor),
        labelLarge: TextStyle(color: darkSecondaryColor),
        labelMedium: TextStyle(color: darkPrimaryTextColor),
        labelSmall: TextStyle(color: darkQuaternaryColor),
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: darkPrimaryTextColor),
        titleSmall: TextStyle(color: darkQuaternaryColor))),
    iconTheme: IconThemeData(color: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: darkPrimaryColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white)),
    drawerTheme: DrawerThemeData(
      elevation: 1,
      backgroundColor: darkPrimaryColor,
      shadowColor: Colors.black,
    ),
    navigationRailTheme: NavigationRailThemeData(
        indicatorColor: darkPrimaryColor,
        selectedLabelTextStyle: TextStyle(color: darkPrimaryColor),
        unselectedIconTheme: IconThemeData(color: darkPrimaryTextColor),
        unselectedLabelTextStyle: TextStyle(color: darkPrimaryTextColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      iconColor: darkSecondaryColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: darkPrimaryColor,
        selectedIconTheme: IconThemeData(color: darkPrimaryColor),
        unselectedItemColor: darkPrimaryTextColor,
        unselectedIconTheme: IconThemeData(color: darkPrimaryTextColor)),
    scaffoldBackgroundColor: darkAppBackgroundColor,
    useMaterial3: true);
