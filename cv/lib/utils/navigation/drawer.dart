import 'package:cv/utils/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cv/utils/buttons.dart';

class CVDrawer extends StatefulWidget {
  const CVDrawer({super.key});

  @override
  State<CVDrawer> createState() => _CVDrawerState();
}

class _CVDrawerState extends State<CVDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(children: [
            addVerticalSpace(50),
            ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                label: Icon(Icons.arrow_back)),
            addVerticalSpace(20),
            WebLinkButton(),
            addVerticalSpace(20),
            BrightnessStateButton()
          ])
        ],
      ),
    );
  }
}
