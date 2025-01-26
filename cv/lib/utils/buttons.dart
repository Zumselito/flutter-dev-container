import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cv/main.dart';
import 'package:cv/utils/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class BrightnessStateButton extends StatefulWidget {
  const BrightnessStateButton({super.key});

  @override
  State<BrightnessStateButton> createState() => _BrightnessStateState();
}

class _BrightnessStateState extends State<BrightnessStateButton> {
  bool isDarkMode =
      PlatformDispatcher.instance.platformBrightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => setState(() {
              isDarkMode = !isDarkMode;
              isDarkMode
                  ? CVApp.of(context)!.changeTheme(ThemeMode.dark)
                  : CVApp.of(context)!.changeTheme(ThemeMode.light);
            }),
        label: Icon(
            isDarkMode ? Icons.light_mode_rounded : Icons.dark_mode_rounded));
  }
}

class NavRailExensionStateButton extends StatefulWidget {
  const NavRailExensionStateButton({super.key});

  @override
  State<NavRailExensionStateButton> createState() =>
      _NavRailExensionStateButtonState();
}

class _NavRailExensionStateButtonState
    extends State<NavRailExensionStateButton> {
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => setState(() {
              isExtended = !isExtended;
              NavBar.of(context)!.changeNavRailExtention(isExtended);
            }),
        label: Icon(isExtended ? Icons.arrow_back : Icons.arrow_forward));
  }
}

class WebLinkButton extends StatelessWidget {
  WebLinkButton({super.key});
  final Uri _url = Uri.parse('https://github.com/Zumselito/flutter-dev-container/blob/main/cv/README.md');

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: _launchUrl, label: Icon(Icons.code));
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
