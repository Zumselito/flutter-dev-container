import 'package:flutter/material.dart';
import 'package:cv/utils/appbar.dart';
import 'package:cv/data/sd_data.dart';
import 'package:cv/utils/content_container.dart';
import 'package:cv/utils/helper_widgets.dart';

class WorkExperiencePage extends StatelessWidget {
  const WorkExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CVAppBar(
            appbaricon: Icons.construction, appbartitle: 'Berufserfahrung'),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: CVData().workExperiences.length,
                  itemBuilder: (context, index) {
                    return CV3HeaderBulletContainer(
                        content: CVData().workExperiences[index]);
                  })),
          addVerticalSpace(15)
        ]));
        //drawer: CVDrawer());
  }
}
