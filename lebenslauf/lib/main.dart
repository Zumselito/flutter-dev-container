import 'package:flutter/material.dart';

void main() => runApp(CVApp());

class CVApp extends StatelessWidget {
  CVApp({super.key});
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (_, mode, __) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: mode,
          home: Scaffold(
            body: Center(
              child: Column(
                children:[
                  Text('${_notifier.value}'),
                  ElevatedButton(
                    onPressed: () => _notifier.value = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                    child: Text('Toggle Theme')
                  )
                ]            
              ),
            ),
          ),
        );
      },
    );
  }
}
