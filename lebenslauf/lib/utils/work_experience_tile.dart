import 'package:flutter/material.dart';
import 'package:lebenslauf/models/work_experience_model.dart';

class WorkExperienceTile extends StatelessWidget {
  WorkExperienceTile({super.key, required this.workexperience});
  WorkExperienceModel workexperience;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text(workexperience.employer)),
              Text(workexperience.period)
            ],
          ),
          Text(workexperience.jobtitle),
          ListView.builder(
            shrinkWrap: true,
            itemCount: workexperience.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                Text('${workexperience.tasks[index]}')
              ],);
          })
        ],
      ),
    );
  }
}
