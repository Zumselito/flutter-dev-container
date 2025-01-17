import 'package:flutter/material.dart';
import 'package:lebenslauf/pages/cv_summary_page.dart';
import 'package:lebenslauf/pages/education_page.dart';
import 'package:lebenslauf/pages/projects_page.dart';
import 'package:lebenslauf/pages/work_experience_page.dart';
import 'package:lebenslauf/utils/navbar.dart';

void main() => runApp(const CVApp());

class CVApp extends StatefulWidget {
  const CVApp({super.key});

  @override
  State<CVApp> createState() => _CVAppState();

  static _CVAppState? of(BuildContext context) => context.findAncestorStateOfType<_CVAppState>();
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
    return MaterialApp(
      title: 'CV-App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: _themeMode,
      home: NavBar(),
      routes: {
        '/cvsummarypage': (context) => CVSummaryPage(),
        '/workexperiencepage': (context) => WorkExperiencePage(),
        '/educationpage': (context) => EducationPage(),
        '/projectspage': (context) => ProjectsPage()
      }
    );
  }
}
