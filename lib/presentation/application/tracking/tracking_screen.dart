import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';

class HabitListPage extends StatefulWidget {
  const HabitListPage({super.key});

  @override
  State<HabitListPage> createState() => _HabitListPageState();
}

class _HabitListPageState extends State<HabitListPage> {
  @override
  void initState() {
    super.initState();
    // Trigger fetching habits
    context.read<HabitsBloc>().add(const FetchHabits());
  }

  bool isCompletedToday(List<dynamic>? completedDates) {
    if (completedDates == null) return false;
    final today = DateTime.now();
    final todayFormatted = DateTime(
      today.year,
      today.month,
      today.day,
    ); // Remove time part
    return completedDates.any(
      (date) => (date as Timestamp).toDate().isAtSameMomentAs(todayFormatted),
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
              } else if (state.habitsList.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.opps.image(),
                      Text(
                        'No habits found. Start tracking to build streaks!',
                        style: getRegularStyle(
                          color: AppColors.greyText,
                        ),
                      ),
                    ],
                  ),
                );
              }

              final habits = state.habitsList;

              return ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  final habit = habits[index];
                  final completedDates = habit['completedDates'];
                  final isCompleted = isCompletedToday(completedDates);

                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text(
                        habit['title'] ?? 'Unnamed Habit',
                        style: getRegularStyle(
                          color: AppColors.vistaBlackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      horizontalTitleGap: 10,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Streak: ${habit['streak'] ?? 0} days",
                            style: getRegularStyle(
                              color: AppColors.vistaBlackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            "Last Completed: ${habit['lastCompletedDate'] != null ? habit['lastCompletedDate'].toDate().toLocal().toString().split(' ')[0] : 'Never'}",
                            style: getRegularStyle(
                              color: AppColors.vistaBlackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      trailing: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: ElevatedButton(
                          onPressed: isCompleted
                              ? null // Disable button if already completed today
                              : () {
                                  context.read<HabitsBloc>().add(
                                        MarkHabitAsDone(
                                          habitId: habit['habitID'],
                                          completedDate: DateTime.now(),
                                        ),
                                      );
                                  setState(() {}); // Refresh the UI
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isCompleted
                                ? AppColors.vistaYellow
                                : AppColors.darkRedColor,
                          ),
                          child: Text(
                            isCompleted ? 'Done' : 'Mark Done',
                            style: getRegularStyle(
                              color: isCompleted
                                  ? AppColors.vistaWhite
                                  : AppColors.vistaWhite,
                              fontWeight: FontWeight.w300,
                              fontSize: FontSize.s13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
