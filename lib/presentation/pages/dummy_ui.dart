import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../widgets/molecules/platform_app_bar.dart';
import '../widgets/organisms/news_card.dart';

@RoutePage()
class DummyUIPage extends StatelessWidget {
  static var page;

  const DummyUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child : Scaffold(
        appBar: const PlatformAppBar(
          title: Text(
            'Dummy UI',
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "List View"),
              Tab(text: "Grid View"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: Constants.homePageListing.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: UIHelper.padding(vertical: 10, horizontal: 24),
                    child: NewsCard(imgSrc: Constants.dummyImg, title: "How can I be flutter developer Expert", desc: "Jill Lepore . 23 May 2023")
                  );
                }
            ),
            ListView.builder(
                itemCount: Constants.homePageListing.length,
                itemBuilder: (context, index) {
                  return ActionText(onTap: () {
                  }, title: Constants.homePageListing[index].title, desc: Constants.homePageListing[index].description);
                }
            )
          ],
        )
      )
    );
  }
}