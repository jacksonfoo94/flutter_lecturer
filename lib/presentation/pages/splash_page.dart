import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

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
                  
                }, title: Constants.homePageListing[index].title, desc: Constants.homePageListing[index].description);
              }
          ),
      ),
    );
  }
}
