import 'package:flutter/material.dart';
import 'package:cv/data/work_experience_data.dart';
import 'package:cv/utils/helper_widgets.dart';
import 'package:cv/utils/work_experience_tile.dart';

class WorkExperiencePage extends StatelessWidget {
  const WorkExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              color: Colors.white,
              Icons.construction),
              addHorizontalSpace(5),
            Text(
              style: TextStyle(color: Colors.white),
              'Berufserfahrung'
            )
        ]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
          )
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: WorkExperienceData().workExperiences.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 15, top: 15, right: 15),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                )
              ),
              child: WorkExperienceTile(workexperience: WorkExperienceData().workExperiences[index])
            );
          }
        )
      )
    );
  }
}
