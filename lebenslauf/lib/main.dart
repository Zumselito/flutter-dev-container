import 'package:flutter/material.dart';
import 'package:lebenslauf/pages/homepage.dart';

void main() => runApp(const CVApp());

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}
