import 'package:flutter/material.dart';
import 'package:cv/utils/helper_widgets.dart';

class CVAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CVAppBar(
      {super.key,
      this.leading,
      this.appbaricon,
      required this.appbartitle,
      this.actions});
  final Widget? leading;
  final IconData? appbaricon;
  final String appbartitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(appbaricon),
          addHorizontalSpace(5),
          Text(style: TextStyle(color: Colors.white), appbartitle)
        ]),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}