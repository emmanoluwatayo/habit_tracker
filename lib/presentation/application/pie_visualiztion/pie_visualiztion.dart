import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';

class PieVisualization extends StatefulWidget {
  const PieVisualization({super.key});

  @override
  State<PieVisualization> createState() => _PieVisualizationState();
}

class _PieVisualizationState extends State<PieVisualization> {
  @override
  void initState() {
    super.initState();
    context.read<HabitsBloc>().add(
          const FetchProgress(isWeekly: false),
        ); // Fetch monthly progress
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.litePrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
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
            children: [
              const Gap(30),
              const Text(
                'Habit Completion Statistics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
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
                          toastInfo(
                            msg: 'Ops! ${state.error.errorMsg}',
                            status: Status.error,
                          ),
                        ],
                      ),
                    );
                  } else if (state.processingStatus ==
                          ProcessingStatus.success &&
                      state.progress.isNotEmpty) {
                    final progress = state.progress;

                    // Constrain the PieChart within a SizedBox
                    return SizedBox(
                      height: 300, // Define the height for the PieChart
                      width: 300, // Define the width for the PieChart
                      child: PieChart(
                        PieChartData(
                          sections: progress.entries.map((entry) {
                            return PieChartSectionData(
                              title: entry.key, // The habit title or label
                              value: entry.value.toDouble(), // The habit count
                              color:
                                  _getColorForKey(entry.key), // Assign colors
                              radius: 50, // Customize the radius of the section
                              titleStyle: getRegularStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            );
                          }).toList(),
                          sectionsSpace: 2, // Space between sections
                          centerSpaceRadius: 40, // Center space size
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

  /// Helper function to get a consistent color for each key
  Color _getColorForKey(String key) {
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
    ];
    return colors[key.hashCode % colors.length];
  }
}
