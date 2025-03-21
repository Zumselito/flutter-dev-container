import 'package:flutter/material.dart';
import 'package:cv/utils/appbars/appbar.dart';
import 'package:cv/data/sd_data.dart';
import 'package:cv/utils/content_container.dart';
import 'package:cv/utils/navigation/drawer.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CVAppBar(
            appbaricon: Icons.psychology_outlined, appbartitle: 'Fähigkeiten'),
        body: Container(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Wrap(
                    children: CVData()
                        .skills
                        .map((i) => CVHeaderBarometerTextContainer(content: i))
                        .toList()))),
        drawer: MediaQuery.of(context).size.width < 640 ? CVDrawer() : null);
  }
}
