import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../../core/commons/colors_const.dart';

@RoutePage()
class InputValidationPage extends StatefulWidget {
  const InputValidationPage({Key? key}) : super(key: key);

  @override
  _InputValidationPageState createState() => _InputValidationPageState();
}

class _InputValidationPageState extends State<InputValidationPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Input Validation',
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(32),
            Text(
              "Hi There",
              style: context.textTheme.headlineLarge?.copyWith(
                color: ColorConstant.primary,
              ),
            ),
            Text(
              "Please enter you name and email :)",
              style: context.textTheme.bodyMedium?.copyWith(
                color: ColorConstant.grey,
              ),
            ),
            UIHelper.verticalSpace(32),
            RichText(
              text: TextSpan(
                text: 'Name ',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: ColorConstant.black,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(8),
            TextFormFieldCustom(
              preffixIcon: Icon(Icons.person), // Replace with your desired image/icon
              hintText: 'Enter your name...',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                // Add more validation rules for username if needed
                return null;
              },
            ),
            UIHelper.verticalSpace(16),
            RichText(
              text: TextSpan(
                text: 'Email ',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: ColorConstant.black,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(8),
            TextFormFieldCustom(
              preffixIcon: Icon(Icons.email), // Replace with your desired image/icon
              hintText: 'Enter your email...',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                // Add more validation rules for username if needed
                return null;
              },
            ),
          ],
        ),
      )
    );
  }
}
