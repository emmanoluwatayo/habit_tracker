import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/extensions/loading.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';

class DeleteHabits extends StatelessWidget {
  final String habitId;
  const DeleteHabits({
    super.key,
    required this.habitId,
  });

  @override
  Widget build(BuildContext context) {
    void deleteHabit() {
      context.read<HabitsBloc>().add(
            DeleteHabit(habitId),
          );
    }

    return BlocListener<HabitsBloc, HabitsState>(
      listener: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          context.showLoader();
        } else if (state.processingStatus == ProcessingStatus.error) {
          context.hideLoader();
          toastInfo(
            msg: 'Ops! ${state.error.errorMsg}',
            status: Status.error,
          );
        } else if (state.processingStatus == ProcessingStatus.success) {
          context.hideLoader();
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const DeletedSuccessModal(),
              );
            },
          );
        }
      },
      child: Container(
        width: 440,
        height: 200,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Delete Habit",
              style: getRegularStyle(
                color: AppColors.paymentTitleRowTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(24),
            Text(
              "Confirm Delete",
              textAlign: TextAlign.center,
              style: getRegularStyle(
                color: AppColors.viewDetailsPaymentTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 44,
                      width: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 1,
                          color: AppColors.darkRedColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Back",
                          style: getRegularStyle(
                            color: AppColors.darkRedColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(52),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      deleteHabit();
                    },
                    child: Container(
                      height: 44,
                      width: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.darkRedColor,
                      ),
                      child: Center(
                        child: Text(
                          "Delete Habit",
                          style: getRegularStyle(
                            color: AppColors.vistaWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DeletedSuccessModal extends StatelessWidget {
  const DeletedSuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440,
      height: 150,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Habit Deleted Successfully ",
            style: getRegularStyle(
              color: AppColors.paymentTitleRowTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(24),
          Text(
            "The selected habit has been successfully deleted and the relevant records have been updated.",
            textAlign: TextAlign.center,
            style: getRegularStyle(
              color: AppColors.viewDetailsPaymentTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
