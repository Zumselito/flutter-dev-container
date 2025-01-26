import 'package:flutter/material.dart';
import 'package:cv/data/sd_data.dart';
import 'package:cv/utils/content_container.dart';
import 'package:cv/utils/helper_widgets.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(color: Colors.white, Icons.psychology_outlined),
            addHorizontalSpace(5),
            Text(style: TextStyle(color: Colors.white), 'Fähigkeiten')
          ]),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
        ),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: CVData().skills.length,
                  itemBuilder: (context, index) {
                    return CVHeaderBarometerTextContainer(
                        content: CVData().skills[index]);
                  })),
          addVerticalSpace(15)
        ]));
  }
}
