import 'package:flutter/material.dart';
import 'package:lebenslauf/data/work_experience_data.dart';
import 'package:lebenslauf/utils/work_experience_tile.dart';

class WorkExperiencePage extends StatelessWidget {
  const WorkExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child:
          Text('Berufserfahrung', style: TextStyle(fontSize: 30,))),
        ),
        body: Expanded(
            child: ListView.builder(
                itemCount: WorkExperienceData().workExperiences.length,
                itemBuilder: (context, index) {
                  return WorkExperienceTile(workexperience: WorkExperienceData().workExperiences[index]);
                })));
  }
}
