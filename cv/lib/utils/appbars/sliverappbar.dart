import 'package:cv/utils/helper_widgets.dart';
import 'package:flutter/material.dart';

class CVSliverAppBar extends StatelessWidget {
  const CVSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.6,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset('assets/img/appbar-bg.jpg', fit: BoxFit.cover),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.person_search),
          addHorizontalSpace(5),
          Text('Berufsprofil')
        ]),
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
          StretchMode.fadeTitle
        ],
      ),
    );
  }
}
