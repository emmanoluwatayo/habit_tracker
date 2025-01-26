import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/counter_bloc/counter_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.rateConColor3,
          title: Text(
            'Counter Screen',
            style: getRegularStyle(
              color: AppColors.vistaWhite,
              fontSize: FontSize.s12,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have pushed this button this many times',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Gap(10),
              Text(
                '${state.countervalue}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(
                    IncrementCounter(),
                  ),
              tooltip: 'Increment',
              child: const Icon(
                Icons.add,
              ),
            ),
            const Gap(10),
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(
                    DecrementCounter(),
                  ),
              tooltip: 'Decrement',
              child: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      );
    });
  }
}
