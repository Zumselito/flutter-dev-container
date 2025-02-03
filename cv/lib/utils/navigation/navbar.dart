import 'package:flutter/material.dart';
import 'package:cv/pages/cv_summary_page.dart';
import 'package:cv/pages/skills_page.dart';
import 'package:cv/pages/work_experience_page.dart';
import 'package:cv/utils/buttons.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();

  // ignore: library_private_types_in_public_api
  static _NavBarState? of(BuildContext context) =>
      context.findAncestorStateOfType<_NavBarState>();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  bool _isExtended = false;
  void changeNavRailExtention(bool isExtended) {
    setState(() {
      _isExtended = isExtended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              selectedIndex: selectedIndex,
              extended: _isExtended,
              elevation: 1,
              leading: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: NavRailExensionStateButton())
                  ])),
              groupAlignment: 0,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.person_search),
                    label: Text('Berufsprofil')),
                NavigationRailDestination(
                    icon: Icon(Icons.construction),
                    label: Text('Berufserfahrung')),
                NavigationRailDestination(
                    icon: Icon(Icons.psychology_outlined),
                    label: Text('Fähigkeiten'))
              ],
              trailing: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: WebLinkButton()),
                    Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 15),
                        child: BrightnessStateButton())
                  ])),
            ),
          Expanded(child: buildPages())
        ]),
        bottomNavigationBar: MediaQuery.of(context).size.width < 640
            ? BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_search), label: 'Berufsprofil'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.construction), label: 'Berufserfahrung'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.psychology_outlined),
                      label: 'Fähigkeiten')
                ],
              )
            : null);
  }

  Widget buildPages() {
    switch (selectedIndex) {
      case 0:
        return CVSummaryPage();
      case 1:
        return WorkExperiencePage();
      case 2:
        return SkillsPage();
      default:
        return CVSummaryPage();
    }
  }
}
