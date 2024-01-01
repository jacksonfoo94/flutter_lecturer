import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../widgets/molecules/platform_app_bar.dart';

@RoutePage()
class DummyUIPage extends StatelessWidget {
  static var page;

  const DummyUIPage({super.key});
  // const DummyUIRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Dummy UI',
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 24),
        child: Text("data"),
      ),
    );
  }
}