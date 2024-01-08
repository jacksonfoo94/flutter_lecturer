import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
                    case 1 : {
                      AutoRouter.of(context).push(CounterRoute());
                    }
                    case 2 : {
                      AutoRouter.of(context).push(InputValidationRoute());
                    }
                  }
                }, title: Constants.homePageListing[index].title, desc: Constants.homePageListing[index].description);
              }
          ),
      ),
    );
  }
}
