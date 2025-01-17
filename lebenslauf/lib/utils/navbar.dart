import 'package:flutter/material.dart';
import 'package:lebenslauf/pages/cv_summary_page.dart';
import 'package:lebenslauf/pages/education_page.dart';
import 'package:lebenslauf/pages/projects_page.dart';
import 'package:lebenslauf/pages/work_experience_page.dart';
import 'package:lebenslauf/utils/brightness_state.dart';

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
                  margin: EdgeInsets.only(bottom: 12),
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
                  icon: Icon(Icons.person_search), label: Text('Profil')),
              NavigationRailDestination(
                  icon: Icon(Icons.construction), label: Text('Erfahrungen')),
              NavigationRailDestination(
                  icon: Icon(Icons.school), label: Text('Ausbildung')),
              NavigationRailDestination(
                  icon: Icon(Icons.code), label: Text('Projekt'))
            ],
          ),
        Expanded(child: buildPages())
      ]),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors
                  .indigoAccent, // Zumsel: Später mit "selectedIconTheme" austauschen!
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_search), label: 'Profil'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.construction), label: 'Erfahrungen'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.school), label: 'Ausbildung'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.code), label: 'Projekt')
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
        return EducationPage();
      case 3:
        return ProjectsPage();
      default:
        return CVSummaryPage();
    }
  }
}
