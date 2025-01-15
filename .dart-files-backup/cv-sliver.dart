import 'package:flutter/material.dart';

void main() => runApp(const CVApp());

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppFrame(),
    );
  }
}

class AppFrame extends StatelessWidget {
  const AppFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.65,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/appbar-bg.jpg', fit: BoxFit.cover),
              title: Text('Herzlich willkommen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              centerTitle: true,
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
                StretchMode.fadeTitle
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaler: const TextScaler.linear(5)),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      /// bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
