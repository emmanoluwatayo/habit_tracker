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

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HabitsBloc>().add(
          const FetchStatistics(),
        );
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
          child: BlocBuilder<HabitsBloc, HabitsState>(
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
              } else if (state.processingStatus == ProcessingStatus.success &&
                  state.statistics.isNotEmpty) {
                final mostConsistent =
                    state.statistics['mostConsistentHabit'] ?? 'N/A';
                final longestStreak =
                    state.statistics['longestStreakHabit'] ?? 'N/A';
                final maxStreak = state.statistics['maxStreak'] ?? 0;
                final maxCompletions = state.statistics['maxCompletions'] ?? 0;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Most Consistent Habit:",
                      style: getRegularStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: AppColors.vistaBlackColor,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      "$mostConsistent",
                      style: getRegularStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.vistaBlackColor,
                      ),
                    ),
                    const Gap(30),
                    Text(
                      "Longest Streak:",
                      style: getRegularStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkRedColor,
                      ),
                    ),
                    const Gap(20),
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.darkRedColor,
                        border: Border.all(
                          color: AppColors.vistaYellow,
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$longestStreak",
                              style: getRegularStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.vistaWhite,
                              ),
                            ),
                            const Gap(15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$maxStreak",
                                  style: getRegularStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.vistaWhite,
                                  ),
                                ),
                                const Gap(5),
                                Text(
                                  "days",
                                  style: getRegularStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.vistaWhite,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Text(
                      "Total Completions: $maxCompletions",
                      style: getRegularStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.vistaYellow,
                      ),
                    ),
                  ],
                );
              }

              return const Center(
                child: Text("No statistics available"),
              );
            },
          ),
        ),
      ),
    );
  }
}
