import 'package:flutter/material.dart';
import 'package:lebenslauf/data/cv_summary_data.dart';

class CVSummaryPage extends StatelessWidget {
  const CVSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)
              )
            ),
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/appbar-bg.jpg', fit: BoxFit.cover),
              title: Text('Berufsprofil', style: TextStyle(color: Colors.white),),
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
                StretchMode.fadeTitle
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(
            height: MediaQuery.of(context).size.width >= 640 ? MediaQuery.of(context).size.height - 55 : MediaQuery.of(context).size.height - 110,
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  )
                ),
                child: CVSummaryData.cvSummaryText
                )
            ],)
            )
          )
        ],
      ),
      /// bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}

