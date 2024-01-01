import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class GridCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  const GridCard({
    super.key,
    required this.imgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.grey,
          width: 0.5,
        ),
        borderRadius: UIHelper.borderRadiusCircular(all: 10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.verticalSpace(24),
                ClipRRect(
                  borderRadius: UIHelper.borderRadiusCircular(all: 10),
                  child: Image.network(
                    imgSrc,
                    width: UIHelper.setSp(70),
                    height: UIHelper.setSp(70),
                    fit: BoxFit.cover,
                  ),
                ),
                UIHelper.verticalSpace(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: context.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
