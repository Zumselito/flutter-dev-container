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
        child: Text(text));
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
          children: [Row(children: [
            Icon(color: Theme.of(context).colorScheme.primary, icon),
            addHorizontalSpace(10),
            Text(style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).colorScheme.primary
            ),
            text)
          ],)],
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
                                  style: darkTheme.textTheme.displaySmall)),
                          Text(content.toprightheader,
                              style: darkTheme.textTheme.titleLarge)
                        ],
                      ),
                      Text(content.subheader,
                          style: darkTheme.textTheme.displayLarge)
                    ])),
            ListView.builder(
                shrinkWrap: true,
                itemCount: content.text.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("• "),
                          Expanded(child: Text('${content.text[index]}')),
                        ],
                      )
                    ],
                  );
                })
          ],
        ));
  }
}
