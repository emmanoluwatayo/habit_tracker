import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/extensions/loading.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/core/theme/values_manager.dart';
import 'package:habit_tracker/presentation/application/dashboard/components/custom_day_selector.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';
import 'package:habit_tracker/presentation/utilities/success_content.dart';

class AddHabits extends StatefulWidget {
  const AddHabits({super.key});

  @override
  State<AddHabits> createState() => _AddHabitsState();
}

class _AddHabitsState extends State<AddHabits> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final habitController = TextEditingController();
  String frequency = 'daily';
  DateTime time = DateTime.now();
  List<String> selectedDays = [];

  void createNewHabit() {
    if (formKey.currentState!.validate()) {
      context.read<HabitsBloc>().add(
            AddHabit(
              title: habitController.text,
              frequency: frequency,
              time: time,
              days: selectedDays,
            ),
          );
    } else {
      toastInfo(
        msg: "You need to fill all info!",
        status: Status.error,
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
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
                child: const SuccessContentModal(
                  title: 'New Habit Added',
                  subtitle:
                      'New Habit has been added successfully and the relevant records have been updated.',
                ),
              );
            },
          );
        }
      },
      child: Container(
        width: 452,
        height: 500,
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 490,
          width: 420,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 40,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: AppColors.darkRedColor,
            ),
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Add Habit",
                      style: getRegularStyle(
                        color: AppColors.vistaBlackColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fill in the fields below to add your Habit.",
                      style: getRegularStyle(
                        color: AppColors.vistaBlackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const Gap(40),
                  TextFormField(
                    controller: habitController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.inventoryTextfieldBorderColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.inventoryTextfieldBorderColor,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.vistaRed,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.vistaRed,
                        ),
                      ),
                      hintText: "Habit Title",
                      hintStyle: getRegularStyle(
                        color: AppColors.newRecordHint,
                        fontSize: FontSize.s10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a habit title";
                      }
                      return null;
                    },
                    onSaved: (value) => habitController.text = value!,
                  ),
                  const Gap(40),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.inventoryTextfieldBorderColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.inventoryTextfieldBorderColor,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.vistaRed,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                        borderSide: const BorderSide(
                          color: AppColors.vistaRed,
                        ),
                      ),
                      hintText: "Frequency",
                      hintStyle: getRegularStyle(
                        color: AppColors.newRecordHint,
                        fontSize: FontSize.s10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    value: frequency,
                    items: [
                      'daily',
                      'weekly',
                      'custom',
                    ]
                        .map((freq) => DropdownMenuItem(
                              value: freq,
                              child: Text(freq),
                            ))
                        .toList(),
                    onChanged: (value) => setState(() => frequency = value!),
                  ),
                  if (frequency == 'custom')
                    CustomDaysSelector(
                      selectedDays: selectedDays,
                      onDaysChanged: (days) => selectedDays = days,
                    ),
                  const Gap(60),
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
                            height: 52,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 1,
                                color: AppColors.darkRedColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Close",
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
                            createNewHabit();
                          },
                          child: Container(
                            height: 52,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.darkRedColor,
                            ),
                            child: Center(
                              child: Text(
                                "Save",
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
                  const Gap(80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
