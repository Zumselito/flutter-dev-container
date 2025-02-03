# Flutter-Lebenslauf-App

Diese Flutter-App dient der Präsentation meines Lebenslaufs. Folgende Flutter/Dart-Techniken bzw. -Methoden wurden angewandt:

## Entwicklungsumgebung

Die Entwicklungsumgebung dieses Projektes besteht aus einem Devcontainer der mit Docker und VSCode bearbeitet und dessen Quellcode auf GitHub gesichert/organisiert wird.

## Theme-Anpassungen

Layout-/Design-Anpassungen wurden, sobald möglich, zentral über die [Standard-Layout-Anpassungsmethoden](lib/theme/theme_customize.dart) von Material vorgenommen.

## Startseite mit SliverAppBar anstatt Standard-AppBar

1. Auf der Startseite ist oben die [SliverAppBar](lib/utils/appbars/sliverappbar.dart) mit Bild-Hintergrund, welcher beim Scollen nach unten verschwindet, integriert.
2. Auf allen anderen Inhaltsseiten der App ist die [Standard-AppBar](lib/utils/appbars/appbar.dart), die aus diesem Grund in einer gesonderten Datei zentral angelegt ist. Unter anderem können Titel-Icon und -Text dynamisch übergeben werden.

## Navigation

Zur Anschauung sind drei Navigationsbereiche responsive in der App integriert.

### BottomNavigationBar & Drawer bei kleinen Bildschirmen

Auf kleinen Bildschirmen ist die Navigation in zwei Bereiche getrennt:

1. Die Inhalte-Navagation findet über die sog. [BottomNavigationBar](lib/utils/navigation/navbar.dart) statt und
2. alle "nicht-inhaltliche" Navigationspunkte über den sog. [Drawer](lib/utils/navigation/drawer.dart), wobei der Button zum Öffnen des Drawers in der Top-AppBar integriert ist.

### NavigationRail bei nicht-kleinen Bildschirmen

Auf nicht-kleinen Bildschirmen findet die komplette Navigation über die sog. [NavigationRail](lib/utils/navigation/navbar.dart) statt, die zudem über den "Pfeil-Button" expandieren kann.

## Dark Mode & Dark Mode Toggle-Button

1. Zunächst wird der Helligkeitsmodus in der [main.dart](lib/main.dart) durch die System-Einstellung des Nutzers bestimmt.
2. Zusätzlich kann der Helligkeitsmodus über einen IconButton (Sonnen-/Mondsymbol) gewechselt werden.

## Datenmodellierung

Die Inhalte sind in einer [gesonderten Datei](lib/data/sd_data.dart) abgelegt, um eine Datenbank ansatzweise zu simulieren. Dadurch ist eine [Datenmodellierung](lib/models/content_container_models.dart) möglich, welche eine zukünftige Eingabe von Daten durch Struktur vereinfacht.

## Wiederverwendung von Code

Wie im Fall der [AppBar](lib/utils/appbars/appbar.dart) sind [Buttons](lib/utils/buttons.dart) und [Inhalte-Layouts](lib/utils/content_containers.dart), wenn möglich bzw. sinnvoll, zum Zwecke der Wiederverwendung in gesonderten Dateien abgelegt.

## Responsive Darstellung der Inhalte

Die [Fähigkeiten](lib/pages/skills_page.dart) werden auf kleinen Bildschirmen in einer Spalte und auf nicht-kleinen Bildschirmen in zwei Spalten dargestellt, was mit einem nicht-standardisierten Mapping umgesetzt wurde, da die standardisierten Listen- und Wrap-Ansichten nicht das gewünschte Ergebnis hervorbrachten.