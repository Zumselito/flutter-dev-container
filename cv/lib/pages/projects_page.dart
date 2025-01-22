import 'package:flutter/material.dart';
import 'package:cv/utils/helper_widgets.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              color: Colors.white,
              Icons.code),
              addHorizontalSpace(5),
            Text(
              style: TextStyle(color: Colors.white),
              'CV-App'
            )
        ]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
          )
        ),
      ),
      body: Text('hallo')
    );
  }
}