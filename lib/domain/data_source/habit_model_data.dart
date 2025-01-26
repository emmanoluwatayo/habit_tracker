import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:intl/intl.dart';

class HabitModelData extends DataTableSource {
  final List<Map<String, dynamic>> data;
  final void Function(Map<String, dynamic> habitList) onFirstIconTap;
  final void Function(Map<String, dynamic> habitList) onSecondIconTap;

  HabitModelData(
    this.data,
    this.onFirstIconTap,
    this.onSecondIconTap,
  );

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) return null;
    final habits = data[index];

    // Handle `time` field
    final time = habits['time'];
    final formattedTime = time is Timestamp
        ? DateFormat('yyyy-MM-dd').format(time.toDate())
        : (time is String ? time : 'Unknown');

    // Handle `completedDates` field
    final completedDates = habits['completedDates'];
    final formattedCompletedDates = completedDates is List
        ? completedDates
            .map((date) => date is Timestamp
                ? DateFormat('yyyy-MM-dd').format(date.toDate())
                : date.toString())
            .join(', ')
        : 'N/A';

    // Handle `days` field
    final days = habits['days'];
    final formattedDays = days is List
        ? days.map((day) => day.toString()).join(', ')
        : 'N/A'; // Join list items as a single string

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(
            habits['sn'].toString(),
            style: getRegularStyle(
              color: const Color(0XFF3B3535),
              fontSize: FontSize.s12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            habits['title'],
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            habits['frequency'],
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            formattedTime,
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            formattedDays, // Display formatted `days`
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            formattedCompletedDates, // Display formatted `completedDates`
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => onFirstIconTap(
                    habits,
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: AppColors.vistaGreen,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.edit,
                        color: AppColors.vistaGreen,
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(5),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => onSecondIconTap(
                    habits,
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: AppColors.vistaRed,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.delete_forever,
                        color: AppColors.vistaRed,
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
