import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/grid_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';


@RoutePage()
class DummyUIPage extends StatelessWidget {

  const DummyUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PlatformAppBar(
          title: Text(
            'Dummy UI',
          )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: ActionText(onTap: () {
                  AutoRouter.of(context).push(const DummyUiSecondRoute());
                }, title: "Next", desc: "Tab Bar, GridView, ListView",),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Container and Text",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Container(
                        child: NewsCard(imgSrc: Constants.dummyImg, title: "How can I be flutter developer Expert", desc: "Jill Lepore . 23 May 2023",)
                    )
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Column",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Column(
                        children: [
                          NewsCard(imgSrc: Constants.dummyImg, title: "How can I be flutter developer Expert", desc: "Jill Lepore . 23 May 2023",),
                          UIHelper.verticalSpace(12),
                          NewsCard(imgSrc: Constants.dummyImg, title: "How can I be flutter developer Expert", desc: "Jill Lepore . 23 May 2023",)
                        ]
                    )
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ROW",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    // SizedBox(
                    //   height: 150, // Set a fixed height for the ListView
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: 3, // Replace with the actual number of items
                    //     itemBuilder: (context, index) {
                    //       return Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 8),
                    //         child: GridCard(
                    //             imgSrc: Constants.dummyImg,
                    //             title: "Container ${index + 1}"
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GridCard(
                              imgSrc: Constants.dummyImg,
                              title: "Container ${1}",
                          ),
                          UIHelper.horizontalSpace(20),
                          GridCard(
                              imgSrc: Constants.dummyImg,
                              title: "Container ${2}",
                          ),
                          UIHelper.horizontalSpace(20),
                          GridCard(
                              imgSrc: Constants.dummyImg,
                              title: "Container ${3}",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BUTTON",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("SUBMIT"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INPUT",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Row(
                      children: [
                        Expanded(
                          child: const TextFormFieldCustom(
                            preffixIcon: Icon(Icons.email), // Replace with your desired image/icon
                            hintText: 'Enter your email...',
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IMAGE ASSETS, SIZED BOX, AND EXPANDED",
                      style: context.textTheme.headlineLarge?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    UIHelper.verticalSpace(12),
                    Row(
                      children: [
                        Expanded(
                          child: GridCard(
                              imgSrc: Constants.dummyImg,
                              title: "Container ${1}",
                          ),
                        ),
                        UIHelper.horizontalSpace(20),
                        GridCard(
                            imgSrc: Constants.dummyImg,
                            title: "Container ${3}",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        )
    );
  }
}