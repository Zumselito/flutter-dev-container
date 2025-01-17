import 'package:flutter/material.dart';

class CVSummaryPage extends StatelessWidget {
  const CVSummaryPage({super.key});

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
          SliverToBoxAdapter(child: SizedBox(
            height: MediaQuery.of(context).size.height - 55,
            )
          )
        ],
      ),
      /// bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}