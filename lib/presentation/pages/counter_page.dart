import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trinity_lecture_app/core/utils/counter_cubit.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';

import '../../core/commons/colors_const.dart';

@RoutePage()
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Counter App',
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text(
                '$state',
                style: context.textTheme.headlineLarge?.copyWith(
                  color: ColorConstant.black,
                )
              );
            }
            ),
            ),
              floatingActionButton: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: Icon(Icons.add),
              ),
              SizedBox(height: 16.0),
              FloatingActionButton
            (
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
