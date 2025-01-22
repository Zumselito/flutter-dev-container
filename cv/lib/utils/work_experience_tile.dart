import 'package:flutter/material.dart';
import 'package:cv/models/work_experience_model.dart';
import 'package:cv/theme/theme_customize.dart';

class WorkExperienceTile extends StatelessWidget {
  const WorkExperienceTile({super.key, required this.workexperience});
  final WorkExperienceModel workexperience;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(workexperience.employer,
                          style: darkTheme.textTheme.displaySmall)),
                  Text(workexperience.period,
                      style: darkTheme.textTheme.titleLarge)
                ],
              ),
              Text(workexperience.jobtitle,
                  style: darkTheme.textTheme.displayLarge)
            ])),
        ListView.builder(
            shrinkWrap: true,
            itemCount: workexperience.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("• "),
                      Expanded(child: Text('${workexperience.tasks[index]}')),
                    ],
                  )
                ],
              );
            })
      ],
    );
  }
}
