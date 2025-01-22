import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cv/main.dart';

class BrightnessState extends StatefulWidget {
  const BrightnessState({super.key});

  @override
  State<BrightnessState> createState() => _BrightnessStateState();
}

class _BrightnessStateState extends State<BrightnessState> {
  bool isDarkMode =
      PlatformDispatcher.instance.platformBrightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => setState(() {
        isDarkMode = !isDarkMode;
        isDarkMode
            ? CVApp.of(context)!.changeTheme(ThemeMode.dark)
            : CVApp.of(context)!.changeTheme(ThemeMode.light);
      }),
      label:
          Icon(isDarkMode ? Icons.light_mode_rounded : Icons.dark_mode_rounded),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      ),
    );
  }
}
