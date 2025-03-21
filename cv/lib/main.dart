import 'package:flutter/material.dart';
import 'package:cv/theme/theme_customize.dart';
import 'package:cv/utils/navigation/navbar.dart';

void main() => runApp(const CVApp());

class CVApp extends StatefulWidget {
  const CVApp({super.key});

  @override
  State<CVApp> createState() => _CVAppState();

  // ignore: library_private_types_in_public_api
  static _CVAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_CVAppState>();
}

class _CVAppState extends State<CVApp> {
  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/app-bg.jpg'), fit: BoxFit.cover)),
        child: MaterialApp(
          title: 'Flutter-CV-App',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _themeMode,
          home: Center(
            child: Container(
                constraints: const BoxConstraints(maxWidth: 1024),
                child: SafeArea(child: NavBar())),
          ),
        ));
  }
}
