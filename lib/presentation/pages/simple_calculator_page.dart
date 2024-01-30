import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/required_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../../core/commons/colors_const.dart';

@RoutePage()
class SimpleCalculatorPage extends StatefulWidget {
  const SimpleCalculatorPage({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorPageState createState() => _SimpleCalculatorPageState();
}

class _SimpleCalculatorPageState extends State<SimpleCalculatorPage> {
  int counter = 0;
  List<bool> isSelected = [true, false, false]; // Track button selection
  List<String> items = ["Add", "Substract", "Multiply", "Divide", "Pow"];
  List<String> itemsSymbol = ["+", "-", "X", "/", "^"];
  List<String> history = [];
  String selectedValue = "";
  String selectedSymbol = "";
  String firstNumber = "";
  String secondNumber = "";
  String answer = "...";

  void buttonPressed() {
    answer = "...";
    if (firstNumber.isNotEmpty && secondNumber.isNotEmpty) {
      var first = int.parse(firstNumber);
      var second = int.parse(secondNumber);
      switch (selectedSymbol) {
        case "+":
          {
            answer = (first + second).toString();
          }
        case "-":
          {
            answer = (first - second).toString();
          }
        case "X":
          {
            answer = (first * second).toString();
          }
        case "/":
          {
            answer = (first / second).toString();
          }
        case "^":
          {
            print("### innnn");
            answer = (pow(first, second)).toString();
          }
      }

      history.add("$firstNumber $selectedSymbol $secondNumber");
    }

    setState(() {});
  }

  void onFirstChangedHandler(String? value) {
    // ignore: curly_braces_in_flow_control_structures
    setState(() {
      if (value != null) {
        firstNumber = value;
      } else {
        firstNumber = "";
      }

      buttonPressed();
    });
  }

  void onSecondChangedHandler(String? value) {
    // ignore: curly_braces_in_flow_control_structures
    setState(() {
      if (value != null) {
        secondNumber = value;
      } else {
        secondNumber = "";
      }
      buttonPressed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PlatformAppBar(
          title: Text(
            'Simple Calculator',
          ),
        ),
        body: Padding(
            padding: UIHelper.padding(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(32),
                Text(
                  "CHOOSE TYPE",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: ColorConstant.green,
                  ),
                ),
                UIHelper.verticalSpace(8),
                Wrap(
                  spacing: 8.0, // Horizontal spacing between items
                  runSpacing: 8.0, // Vertical spacing between rows
                  children: items.map((item) {
                    return ElevatedButton(
                        onPressed: () {
                          if (selectedValue != item) {
                            selectedValue = item;
                          } else {
                            selectedValue = "";
                          }

                          selectedSymbol = itemsSymbol[items.indexOf(item)];

                          setState(() {});
                          buttonPressed();
                          print("### $selectedSymbol");
                        },
                        child: Text(
                          item,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: ColorConstant.black,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: item == selectedValue
                              ? MaterialStateProperty.all<Color>(Colors.blue)
                              : null,
                        ));
                  }).toList(),
                ),
                UIHelper.verticalSpace(16),
                Visibility(
                  visible: selectedValue.isNotEmpty,
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: TextFormFieldCustom(
                            keyboardType: TextInputType.numberWithOptions(),
                            textAlign: TextAlign.center,
                            onChange: onFirstChangedHandler,
                          ),
                        ),
                        UIHelper.horizontalSpace(16),
                        Container(
                          width: 40,
                          height: 40,
                          child: Text(
                            selectedSymbol,
                            style: context.textTheme.headlineLarge?.copyWith(
                              color: ColorConstant.black,
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: TextFormFieldCustom(
                            keyboardType: TextInputType.numberWithOptions(),
                            textAlign: TextAlign.center,
                            onChange: onSecondChangedHandler,
                          ),
                        ),
                        UIHelper.horizontalSpace(16),
                        Container(
                          width: 40,
                          height: 40,
                          child: Text(
                            "= $answer",
                            style: context.textTheme.headlineLarge?.copyWith(
                              color: ColorConstant.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Please calculate button to get the result"),
                    UIHelper.verticalSpace(16),
                    Text(
                      "HISTORY",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: ColorConstant.green,
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                          itemCount: history.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        history[index],
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        var textArray = history[index].split(" ");
                                        firstNumber = textArray[0];
                                        selectedSymbol = textArray[1];
                                        secondNumber = textArray[2];
                                        setState(() {
                                          buttonPressed();
                                        });
                                      },
                                      child: Text(
                                        "Re-Apply",
                                        style: TextStyle(
                                          color: ColorConstant.primary,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(), // Divider between history items
                              ],
                            );
                          },
                        ))
                  ]),
                )
              ],
            ),
          ),
        );
  }
}
