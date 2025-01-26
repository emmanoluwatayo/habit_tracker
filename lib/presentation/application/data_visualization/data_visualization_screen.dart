import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';

class DataVisualizationScreen extends StatefulWidget {
  const DataVisualizationScreen({super.key});

  @override
  State<DataVisualizationScreen> createState() =>
      _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HabitsBloc>().add(
          const FetchProgress(isWeekly: true),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.litePrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.vistaWhite2,
            border: Border.all(
              color: AppColors.rateConColor3,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              const Text(
                'Habit Completion Statistics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              BlocBuilder<HabitsBloc, HabitsState>(
                builder: (context, state) {
                  if (state.processingStatus == ProcessingStatus.waiting) {
                    return const Center(
                      child: SpinKitCircle(
                        color: AppColors.primaryColor,
                      ),
                    );
                  } else if (state.processingStatus == ProcessingStatus.error) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.opps.image(),
                          const Gap(10),
                          toastInfo(
                            msg: 'Ops! ${state.error.errorMsg}',
                            status: Status.error,
                          ),
                        ],
                      ),
                    );
                  } else if (state.processingStatus ==
                          ProcessingStatus.success &&
                      state.progress.isNotEmpty &&
                      state.labels.isNotEmpty) {
                    final progress = state.progress;
                    final labels = state.labels;

                    // Constrain the BarChart with a SizedBox
                    return SizedBox(
                      height: 300, // Specify the height for the BarChart
                      child: BarChart(
                        BarChartData(
                          barGroups: labels.map((label) {
                            final count = progress[label] ?? 0;
                            return BarChartGroupData(
                              x: labels.indexOf(label),
                              barRods: [
                                BarChartRodData(
                                  toY: count.toDouble(),
                                  width: 16,
                                  color: AppColors.darkRedColor,
                                ),
                              ],
                            );
                          }).toList(),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  final index = value.toInt();
                                  if (index >= 0 && index < labels.length) {
                                    return Text(
                                      labels[index],
                                      style: const TextStyle(fontSize: 10),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                                reservedSize: 30,
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) => Text(
                                  value.toInt().toString(),
                                  style: const TextStyle(fontSize: 10),
                                ),
                                reservedSize: 30,
                              ),
                            ),
                          ),
                          borderData: FlBorderData(show: false),
                          gridData: const FlGridData(show: false),
                        ),
                      ),
                    );
                  }

                  return const Center(
                    child: Text("No data available"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
