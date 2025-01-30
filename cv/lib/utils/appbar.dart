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
    return SafeArea(
        child: AppBar(
      leading: MediaQuery.of(context).size.width < 10
          ? Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            )
          : null,
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(color: Colors.white, appbaricon),
        addHorizontalSpace(5),
        Text(style: TextStyle(color: Colors.white), appbartitle)
      ]),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CVDrawer extends StatelessWidget {
  const CVDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Dieser Bereich ist noch in Entwicklung'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
