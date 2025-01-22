import 'package:flutter/material.dart';
import 'package:lebenslauf/utils/helper_widgets.dart';
import 'package:lebenslauf/data/cv_summary_data.dart';
import 'package:lebenslauf/utils/content_container.dart';

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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    color: Colors.white,
                    Icons.person_search),
                  addHorizontalSpace(5),
                  Text(style: TextStyle(color: Colors.white), 'Berufsprofil')
                ]
              ),
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
            child: Column(children: [
              TextContainer(text: CVText.cvSummaryText.toString()),
              TitleContainer(icon: Icons.school, text: 'Ausbildung'),
              CV3HeaderBulletContainer(content: CV3HeaderBulletText().university),
              CV3HeaderBulletContainer(content: CV3HeaderBulletText().universityabroad),
              CV3HeaderBulletContainer(content: CV3HeaderBulletText().schooldegree),
              addVerticalSpace(25)
            ],)
            )
          )
        ],
      ),
    );
  }
}

