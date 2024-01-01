import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class GridCard extends StatelessWidget {
  final String imgSrc;
  final String title;

  const GridCard({
    Key? key,
    required this.imgSrc,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UIHelper.verticalSpace(24),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgSrc,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          UIHelper.verticalSpace(8),
          Text(
            title,
            style: context.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
