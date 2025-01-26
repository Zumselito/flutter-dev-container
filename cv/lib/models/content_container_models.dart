class CV3HeaderBulletModel {
  final String header;
  final String subheader;
  final String toprightheader;
  final List bullets;

  CV3HeaderBulletModel(
      {required this.header,
      required this.subheader,
      required this.toprightheader,
      required this.bullets});
}

class CVSkillLevelModel {
  final String skill;
  final int level;
  final String description;
  final String category;

  CVSkillLevelModel(
      {required this.skill,
      required this.level,
      this.description = '',
      this.category = ''});
}

