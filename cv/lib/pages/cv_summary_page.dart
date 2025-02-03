import 'package:cv/utils/appbars/sliverappbar.dart';
import 'package:flutter/material.dart';
import 'package:cv/data/sd_data.dart';
import 'package:cv/utils/helper_widgets.dart';
import 'package:cv/utils/content_container.dart';
import 'package:cv/utils/navigation/drawer.dart';

class CVSummaryPage extends StatelessWidget {
  const CVSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            CVSliverAppBar(),
            SliverToBoxAdapter(
                child: SizedBox(
                    child: Column(
              children: [
                TextContainer(text: CVData.cvSummaryText),
                TitleContainer(icon: Icons.school, text: 'Ausbildung'),
                CV3HeaderBulletContainer(content: CVData().university),
                CV3HeaderBulletContainer(content: CVData().universityabroad),
                CV3HeaderBulletContainer(content: CVData().schooldegree),
                addVerticalSpace(15)
              ],
            )))
          ],
        ),
        drawer: MediaQuery.of(context).size.width < 640 ? CVDrawer() : null);
  }
}
