import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/extensions/loading.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/domain/data_source/habit_model_data.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/application/dashboard/components/add_habits.dart';
import 'package:habit_tracker/presentation/application/dashboard/components/delete_habits.dart';
import 'package:habit_tracker/presentation/application/dashboard/components/edit_habits.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';

class HabitDashboardPage extends StatefulWidget {
  const HabitDashboardPage({super.key});

  @override
  State<HabitDashboardPage> createState() => _HabitDashboardPageState();
}

class _HabitDashboardPageState extends State<HabitDashboardPage> {
  int _rowsPerPage = 5;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    // Dispatch the event to fetch pharmacy inventory items
    context.read<HabitsBloc>().add(
          const FetchHabits(),
        );
  }

  List<DataColumn> get columns => [
        DataColumn(
          label: Text(
            "S/N",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          numeric: true,
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Habit Name",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Frequency",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Time",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Days",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Completed Dates",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: Text(
            "Actions",
            style: getRegularStyle(
              color: const Color(0XFF5D6466),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ];

  int compare<T>(T a, T b, bool ascending) {
    if (a is Comparable) {
      return ascending
          ? a.compareTo(b)
          : b is Comparable
              ? b.compareTo(a)
              : 0;
    }
    return 0;
  }

  void handleDeleteTap(Map<String, dynamic> habitList) {
    context.showLoader();
    if (kDebugMode) {
      print('Details tapped for Habit with S/N: $habitList');
    }
    Future.delayed(const Duration(seconds: 2), () {
      context.hideLoader();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: DeleteHabits(
              habitId: habitList['habitID'],
            ),
          );
        },
      );
    });
  }

  void handleEditTap(Map<String, dynamic> habitList) {
    context.showLoader();
    if (kDebugMode) {
      print('Details tapped for patient with S/N: $habitList');
    }
    Future.delayed(const Duration(seconds: 2), () {
      context.hideLoader();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: EditHabits(
              habitId: habitList['habitID'],
              title: habitList['title'],
              frequency: habitList['frequency'],
            ),
          );
        },
      );
    });
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
            borderRadius: BorderRadius.circular(4),
            color: AppColors.vistaWhite2,
            border: Border.all(
              color: AppColors.rateConColor3,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const AddHabits(),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 52,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.darkRedColor,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1.5,
                                color: AppColors.vistaWhite,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: AppColors.vistaWhite,
                              size: FontSize.s18,
                            ),
                          ),
                          const Gap(7),
                          Text(
                            "Add Habits",
                            style: getRegularStyle(
                              color: AppColors.vistaWhite,
                              fontSize: FontSize.s18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(40),
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
                  } else if (state.habitsList.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.opps.image(),
                          Text(
                            'No habits data available',
                            style: getRegularStyle(
                              color: AppColors.greyText,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  // Create a mutable copy of the inventory data
                  List<Map<String, dynamic>> habitListData =
                      List.from(state.habitsList); // <-- Copy the list
                  if (_sortColumnIndex != null) {
                    habitListData.sort((a, b) {
                      switch (_sortColumnIndex) {
                        case 0:
                          return compare<String>(
                            a['sn'] ?? '',
                            b['sn'] ?? '',
                            _sortAscending,
                          );
                        case 1:
                          return compare<String>(
                            a['title'] ?? 'N/A',
                            b['title'] ?? 'N/A',
                            _sortAscending,
                          );
                        case 2:
                          return compare<String>(
                            a['frequency'] ?? 'N/A',
                            b['frequency'] ?? 'N/A',
                            _sortAscending,
                          );
                        case 3:
                          return compare<String>(
                            a['time'] ?? 'N/A',
                            b['time'] ?? 'N/A',
                            _sortAscending,
                          );
                        case 4:
                          return compare<int>(
                            a['days'] ?? 'N/A',
                            b['days'] ?? 'N/A',
                            _sortAscending,
                          );
                        case 5:
                          return compare<String>(
                            a['completedDates'] ?? 'N/A',
                            b['completedDates'] ?? 'N/A',
                            _sortAscending,
                          );
                        default:
                          return 0;
                      }
                    });
                  }
                  return Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1.5,
                        color: AppColors.darkRedColor,
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: PaginatedDataTable(
                        showFirstLastButtons: true,
                        rowsPerPage: _rowsPerPage,
                        availableRowsPerPage: const [5, 10, 20, 50],
                        onRowsPerPageChanged: (value) {
                          setState(() {
                            _rowsPerPage = value!;
                          });
                        },
                        sortColumnIndex: _sortColumnIndex,
                        sortAscending: _sortAscending,
                        columns: columns,
                        source: HabitModelData(
                          habitListData.asMap().entries.map((entry) {
                            int index =
                                entry.key; // This is the index in the list
                            Map<String, dynamic> habit = entry.value;
                            habit['sn'] = (index + 1)
                                .toString(); // Add serial number to staff data
                            return habit;
                          }).toList(),
                          handleEditTap,
                          handleDeleteTap,
                        ),
                      ),
                    ),
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
