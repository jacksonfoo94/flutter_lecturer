import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../../core/routes/app_router.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 24),
          child: ListView.builder(
              itemCount: Constants.homePageListing.length,
              itemBuilder: (context, index) {
                return ActionText(onTap: () {
                  switch(index) {
                    case 0 : {
                      AutoRouter.of(context).push(const DummyUIRoute());
                    }
                  }
                }, title: Constants.homePageListing[index].title, desc: Constants.homePageListing[index].description);
              }
          ),
      ),
    );
  }
}
