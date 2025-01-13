import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
        
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (_, mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: mode,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Herzlich Willkommen'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    _notifier.value = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
                    isDarkMode = !isDarkMode;
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    isDarkMode ? Icons.light_mode_rounded : Icons.dark_mode_rounded
                  ),
                ),
              ],
            ),
            body: Center(
              child: Column(children: [
                Text('${MediaQuery.platformBrightnessOf(context)}'),
              ]),
            ),
          ),
        );
      },
    );
  }
}
