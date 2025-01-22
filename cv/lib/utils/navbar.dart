import 'package:flutter/material.dart';
import 'package:cv/pages/cv_summary_page.dart';
import 'package:cv/pages/skills_page.dart';
import 'package:cv/pages/projects_page.dart';
import 'package:cv/pages/work_experience_page.dart';
import 'package:cv/utils/brightness_state.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  bool isExtended = false;

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
            extended: isExtended,
            leading: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 12),
                  child: ElevatedButton.icon(
                    onPressed: () => setState(() => isExtended = !isExtended),
                    label: Icon(
                        isExtended ? Icons.arrow_back : Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: BrightnessState()
                )
              ],
            ),
            groupAlignment: 0,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.person_search), label: Text('Berufsprofil')),
              NavigationRailDestination(
                  icon: Icon(Icons.construction), label: Text('Berufserfahrung')),
              NavigationRailDestination(
                  icon: Icon(Icons.psychology_outlined), label: Text('Fähigkeiten')),
              NavigationRailDestination(
                  icon: Icon(Icons.code), label: Text('CV-App'))
            ],
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
                    icon: Icon(Icons.psychology_outlined), label: 'Fähigkeiten'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.code), label: 'CV-App')
              ],
            )
          : null,
    );
  }

  Widget buildPages() {
    switch (selectedIndex) {
      case 0:
        return CVSummaryPage();
      case 1:
        return WorkExperiencePage();
      case 2:
        return SkillsPage();
      case 3:
        return ProjectsPage();
      default:
        return CVSummaryPage();
    }
  }
}
