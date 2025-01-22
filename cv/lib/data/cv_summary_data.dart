import 'package:cv/models/content_container_models.dart';

class CVText {
  static const String cvSummaryText =
      'Mein Name ist Stephan Djordjevic und ich bin Full-Stack-Web-Entwickler. Meine Ausbildung habe ich als Diplom-Volkswirt abgeschlossen und war danach über 20 Jahre in der digitalen Werbebranche tätig. Gleich zu Beginn meiner beruflichen Laufbahn als Online-Kampagnen-Manager hatte ich stetigen Kontakt zu HTML, CSS und JavaScript. Nicht viel später habe ich mich zunächst privat mit opensource Content Management Systemen, wie Joomla und Wordpress und folglich mit PHP beschäftigt. Mit großem Interesse an neuesten Methoden und Technologien habe ich zuletzt mit CD/CI, Containerization sowie weiteren objektorientierten Programmiersprachen wie ReactJS/Typescript und nicht zuletzt mit Flutter/Dart experimentiert. Dabei zeigt insbesondere Flutter auf, wohin die Reise der Software-Entwicklung geht und ich möchte Teil dieser Entwicklung sein.';
}

class CV3HeaderBulletText {
  final university = CV3HeaderBulletModel(
    header: 'Universität für Wirtschaft und Politik',
    subheader: 'Diplom-Volkswirt',
    toprightheader: '10.1996 - 07.2003',
    text: [
      'Fokus auf Geld- und Finanzmärkte sowie',
      'die Ökonometrie',
    ],
  );

  final universityabroad = CV3HeaderBulletModel(
    header: 'Macquarie University (Sydney/Australien)',
    subheader: 'Auslandsjahr',
    toprightheader: '01.1999 - 12.1999',
    text: [
      'Vertiefung der ökonometrischen Kenntnisse',
    ],
  );

  final schooldegree = CV3HeaderBulletModel(
    header: 'Gymnasium Bad Zwischenahn-Edewecht',
    subheader: 'Allgemeine Hochschulreife',
    toprightheader: '08.1990 - 06.1994',
    text: [
      'Leistungskurse: Mathematik und Geometrie',
    ],
  );
}
