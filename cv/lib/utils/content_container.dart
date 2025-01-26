import 'package:flutter/material.dart';
import 'package:cv/models/content_container_models.dart';
import 'package:cv/theme/theme_customize.dart';
import 'package:cv/utils/helper_widgets.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, top: 15, right: 15),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Wrap(children: [Text(text)]));
  }
}

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key, this.icon, required this.text});
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, top: 15, right: 15),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(color: Theme.of(context).colorScheme.primary, icon),
                addHorizontalSpace(10),
                Text(
                    style: TextStyle(
                        fontSize: 23,
                        color: Theme.of(context).colorScheme.primary),
                    text)
              ],
            )
          ],
        ));
  }
}

class CV3HeaderBulletContainer extends StatelessWidget {
  const CV3HeaderBulletContainer({super.key, required this.content});
  final CV3HeaderBulletModel content;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, top: 15, right: 15),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(content.header,
                                  style: darkTheme.textTheme.headlineMedium)),
                          Text(content.toprightheader,
                              style: darkTheme.textTheme.headlineSmall)
                        ],
                      ),
                      Text(content.subheader,
                          style: darkTheme.textTheme.headlineLarge)
                    ])),
            ListView.builder(
                shrinkWrap: true,
                itemCount: content.bullets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("• "),
                          Expanded(child: Text('${content.bullets[index]}')),
                        ],
                      )
                    ],
                  );
                })
          ],
        ));
  }
}

class CVHeaderBarometerTextContainer extends StatelessWidget {
  const CVHeaderBarometerTextContainer({super.key, required this.content});
  final CVSkillLevelModel content;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, top: 15, right: 15),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(content.skill,
                                style: darkTheme.textTheme.headlineMedium)),
                        if (content.category != '')
                          Text(content.category,
                              style: darkTheme.textTheme.headlineSmall)
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          for (int i = 0; i < 10; i++)
                            (i < content.level)
                                ? Expanded(
                                    child: Center(
                                        child: Text(
                                            style: TextStyle(
                                                color: darkTheme
                                                    .colorScheme.secondary,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w900),
                                            '>')))
                                : Expanded(
                                    child: Center(
                                        child: Text(
                                            style: TextStyle(
                                              color: Color(0x11efdab9),
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            '>')))
                        ])),
                    if (content.description != '')
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(children: [
                            addHorizontalSpace(20),
                            Text(content.description)
                          ]))
                  ]))
        ]));
  }
}
