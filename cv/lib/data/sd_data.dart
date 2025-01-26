import 'package:cv/models/content_container_models.dart';

class CVData {
  static const String cvSummaryText =
      'Mein Name ist Stephan Djordjevic und ich bin Full-Stack-Web-Entwickler. Meine Ausbildung habe ich als Diplom-Volkswirt abgeschlossen und war danach über 20 Jahre in der digitalen Werbebranche tätig. Gleich zu Beginn meiner beruflichen Laufbahn als Online-Kampagnen-Manager hatte ich stetigen Kontakt zu HTML, CSS und JavaScript. Nicht viel später habe ich mich zunächst privat mit opensource Content Management Systemen, wie Joomla und Wordpress und folglich mit PHP beschäftigt. Mit großem Interesse an neuesten Methoden und Technologien habe ich zuletzt mit CD/CI, Containerization sowie weiteren objektorientierten Programmiersprachen wie ReactJS/Typescript und nicht zuletzt mit Flutter/Dart experimentiert. Dabei zeigt insbesondere Flutter auf, wohin die Reise der Software-Entwicklung geht und ich möchte Teil dieser Entwicklung sein.';

  final university = CV3HeaderBulletModel(
    header: 'Universität für Wirtschaft und Politik',
    subheader: 'Diplom-Volkswirt',
    toprightheader: '10.1996 - 07.2003',
    bullets: [
      'Fokus auf Geld- und Finanzmärkte sowie',
      'Ökonometrie',
    ],
  );

  final universityabroad = CV3HeaderBulletModel(
    header: 'Macquarie University (Sydney/Australien)',
    subheader: 'Auslandsjahr',
    toprightheader: '01.1999 - 12.1999',
    bullets: [
      'Vertiefung der ökonometrischen Kenntnisse',
    ],
  );

  final schooldegree = CV3HeaderBulletModel(
    header: 'Gymnasium Bad Zwischenahn-Edewecht',
    subheader: 'Allgemeine Hochschulreife',
    toprightheader: '08.1990 - 06.1994',
    bullets: [
      'Leistungskurse: Mathematik und Geometrie',
    ],
  );

  List<CV3HeaderBulletModel> workExperiences = [
    CV3HeaderBulletModel(
      header: 'Freiberufler',
      subheader: 'Full-Stack-Web-Entwickler',
      toprightheader: 'Ab 01.2022',
      bullets: [
        'Entwicklung, Überarbeitung und Wartung von Webseiten',
        'Beratung der Digitalisierung',
        'Einrichtung dritt-seitiger Systeme, wie z.B. für die Analyse',
        'Erstellung digitaler Werbemittel',
        'Beratung für die Umsetzung von SEO und weiterer Online-Marketing-Maßnahmen'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Nordwest-Zeitung',
      subheader: 'Online-Kampagnen-Manager',
      toprightheader: '06.2021 - 12.2021',
      bullets: [
        'Kampagnen- bzw. Werbemittelmanagement inkl. Entwicklung und Unterstützung des Sales-Teams diesbezüglich',
        'Einrichtung und Durchführung des Qualitätsmanagements der digitaler Werbeschaltung',
        'Werbeplatz-Inventar- und Ertragsmanagement in Abstimmung mit den technischen Verantwortlichen',
        'Entwicklung eines effizienten und einheitlichen Berichtssystems durch maximale Automatisierung',
        'Umfassende Betreuung, Anwendung und Weiterentwicklung des Tag-Managers (Google)',
        'Ansprechpartner für den nationalen Vermarkter und allen weiteren Einkäufern digitalem Werbeplatz-Inventars'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'digimedia tech',
      subheader: 'Geschäftsführer',
      toprightheader: '12.2012 - 12.2015',
      bullets: [
        'Aufbau von Software-Entwicklerteams in Serbien',
        'Einrichtung und Umsetzung des agilen Produktmanagements (Scrum, CI/CD)',
        'Beratung für die digitalen Strategie von Werbeagenturen',
        'Neu-Kunden-Akquise'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'digimedia consult',
      subheader: 'Geschäftsführender Berater',
      toprightheader: '07.2010 - 12.2015',
      bullets: [
        'Marktanalyse User-Data-Management- & AdServer-Systeme',
        'AdServer-Migration sowie Analyse und Optimierung von Werbeplatz- bzw. AdTag-Strukturen',
        'Ertragsmanagement – Umsatzsteigerung durch Maximierung von eTKP und Auslastung digitalem Werbeplatz-Inventars',
        'Durchführung von Workshops für die Anwendung eingeführter Werbeplatz-Management-Systeme',
        'Verhandlungsführung mit Kooperationspartnern, wie z.B. Werbeplatz-Vermarkter'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Axel Springer AG – ASMI',
      subheader: 'Leiter Technical Development',
      toprightheader: '07.2010 - 12.2010',
      bullets: [
        'Identifikation innovativer Methoden und Technologien für die optimierte Auslieferung digitaler Werbung',
        'Entwicklung von Konzepten für die mögliche Übernahme neuer Geschäftsfelder',
        'Ermittlung von Umsatz-Potenzialen innovativer Methoden und Technologien sowie möglicher neuer Geschäftsfelder',
        'Vorstellung potenzieller Partner-Technologien an die Abteilungsleitung inkl. Empfehlungen',
        'Rekrutierung von Spezialkräften für den Team-Aufbau zur Anwendung neuer Technologien',
        'Vorstellung neuer angewandter Technologien gegenüber Kooperationspartnern'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Axel Springer AG – ASMI',
      subheader: 'Teamleiter Inventory Management',
      toprightheader: '01.2009 - 06.2010',
      bullets: [
        'Identifikation innovativer Methoden und Technologien für die optimierte Auslieferung digitaler Werbung',
        'Entwicklung von Konzepten für die mögliche Übernahme neuer Geschäftsfelder',
        'Ermittlung von Umsatz-Potenzialen innovativer Methoden und Technologien sowie möglicher neuer Geschäftsfelder',
        'Vorstellung potenzieller Partner-Technologien an die Abteilungsleitung inkl. Empfehlungen',
        'Rekrutierung von Spezialkräften für den Team-Aufbau zur Anwendung neuer Technologien',
        'Vorstellung neuer angewandter Technologien gegenüber Kooperationspartnern'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Axel Springer Auto Verlag',
      subheader: 'Teamleiter Inventory Management',
      toprightheader: '02.2006 - 12.2008',
      bullets: [
        'Bestimmung, Analyse und Optimierung von Werbeplatz- bzw. AdTag-Strukturen',
        'Migration neuer AdServer-Systeme (Falk AdSolution, DFP von Doubleclick)',
        'Marktanalyse und Bestimmung der Werbeproduktpreise',
        'Alleinige Umsetzung des Ad- bzw.  Kampagnen- Managements',
        'Qualitätsmanagement der Werbekampagnen und erweitertes Reporting',
        'Account-Management und Betreuung von Mediaagenturen und direkte Werbekunden',
        'Kundenakquise'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Freiberufler',
      subheader: 'Full-Stack-Web-Entwickler',
      toprightheader: '01.2006 - 02.2006',
      bullets: [
        'Optimierung von Design und Usability der Webauftritte',
        'Implementierung von und Mitarbeiterausbildung für die Nutzung neuer Content Management Systeme',
        'Beratung in und Umsetzung von SEO und weiterer Online-Marketing-Maßnahmen'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Interactive Media CCSP',
      subheader: 'Produkt-Manager',
      toprightheader: '03.2000 - 10.2001',
      bullets: [
        'Beratung/Unterstützung verschiedener Kunden-Webseiten in Bezug auf ihre Vermarktung',
        'Beobachtung und Planung des Werbeplatz-Inventars der Kunden-Webseiten',
        'Unterstützung des Sales Teams des Unternehmens durch Entwicklung und Präsentation neuer Werbeprodukte der Kunden-Webseiten',
        'Berichten der Vermarktungsergebnisse an die beteiligten Parteien'
      ],
    ),
    CV3HeaderBulletModel(
      header: 'Axel Springer AG – Interactive Media',
      subheader: 'Kampagnen/Ad-Manager',
      toprightheader: '03.2000 - 10.2001',
      bullets: [
        'Technische Unterstützung des Sales Teams des Unternehmens, der Mediaagenturen und Direktkunden',
        'Aufsetzen von Werbekampagnen im AdServer',
        'Aufbau eines Qualitätsmanagements für die Werbekampagnen'
      ],
    )
  ];

  List<CVSkillLevelModel> skills = [
    CVSkillLevelModel(
        skill: 'UI/UX-Basis',
        category: 'Frontend',
        level: 8,
        description: 'HTML, CSS, JavaScript'),
    CVSkillLevelModel(
        skill: 'UI/UX-Technologie-Frameworks',
        category: 'Frontend',
        level: 7,
        description: 'Flutter/Dart, React/Typescript, SCSS/SASS'),
    CVSkillLevelModel(
        skill: 'UI/UX-Design-Frameworks',
        category: 'Frontend',
        level: 7,
        description: 'Flutter/Material, TailwindCSS, Bootstrap'),
    CVSkillLevelModel(
        skill: 'CMS',
        category: 'Frontend',
        level: 8,
        description: 'Worpress, Joomla'),
    CVSkillLevelModel(
        skill: 'Objektorientiertes Programmieren (OOP)',
        category: 'Backend',
        level: 7,
        description: 'Flutter/Dart, Django/Python, Express/Node, Laravel/PHP'),
    CVSkillLevelModel(
        skill: 'Server-Betriebssysteme',
        category: 'Backend',
        level: 6,
        description: 'Alpine, Ubuntu, Debian'),
    CVSkillLevelModel(
        skill: 'Web-Server',
        category: 'Backend',
        level: 6,
        description: 'Node, Nginx, Apache'),
    CVSkillLevelModel(
        skill: 'Containervirtualisierung',
        category: 'Backend',
        level: 7,
        description: 'Docker, Docker Hub'),
    CVSkillLevelModel(
        skill: 'Datenbanken & -modellierung',
        category: 'Backend',
        level: 8,
        description:
            'Relationale Datenbanken, wie MariaDB oder MySQL, sowie nicht-relationale Datenbanken, wie MongoDB.'),
    CVSkillLevelModel(
        skill: 'Versionskontrolle',
        category: 'DevOps',
        level: 8,
        description: 'Git/GitHub'),
    CVSkillLevelModel(
        skill: 'Entwicklungsumgebung',
        category: 'DevOps',
        level: 6,
        description: 'Devcontainer Docker/VSCode'),
    CVSkillLevelModel(
        skill: 'Continuous Integration & Continuous Deployment (CI/CD)',
        category: 'DevOps',
        level: 4,
        description: 'GitLab'),
    CVSkillLevelModel(
        skill: 'Unit Testing',
        category: 'DevOps',
        level: 3,
        description: 'Bash, Python'),
    CVSkillLevelModel(
        skill: 'Deutsch',
        category: 'Sprachen',
        level: 10,
        description: 'Muttersprache'),
    CVSkillLevelModel(
        skill: 'Englisch',
        category: 'Sprachen',
        level: 8,
        description: 'Verhandlungssicher'),
    CVSkillLevelModel(
        skill: 'Spanisch',
        category: 'Sprachen',
        level: 3,
        description: 'Grundkenntnisse'),
    CVSkillLevelModel(
        skill: 'Blindes 10-Finger-Tastenschreiben',
        category: 'Persönlich',
        level: 9,
        description: ''),
  ];
}
