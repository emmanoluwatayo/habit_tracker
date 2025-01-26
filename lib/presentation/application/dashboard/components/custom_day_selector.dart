// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';

class CustomDaysSelector extends StatefulWidget {
  final List<String> selectedDays;
  final Function(List<String>) onDaysChanged;

  const CustomDaysSelector({
    super.key,
    required this.selectedDays,
    required this.onDaysChanged,
  });

  @override
  _CustomDaysSelectorState createState() => _CustomDaysSelectorState();
}

class _CustomDaysSelectorState extends State<CustomDaysSelector> {
  final List<String> daysOfWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: daysOfWeek.map((day) {
        bool isSelected = widget.selectedDays.contains(day);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                widget.selectedDays.remove(day);
              } else {
                widget.selectedDays.add(day);
              }
            });
            widget.onDaysChanged(widget.selectedDays);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.rateConColor3
                  : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color:
                    isSelected ? AppColors.darkRedColor : Colors.grey.shade400,
                width: 1.5,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: AppColors.darkRedColor.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : [],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? AppColors.darkRedColor : Colors.black,
                  ),
                ),
                Checkbox(
                  value: isSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        widget.selectedDays.add(day);
                      } else {
                        widget.selectedDays.remove(day);
                      }
                    });
                    widget.onDaysChanged(widget.selectedDays);
                  },
                  activeColor: AppColors.darkRedColor,
                  checkColor: Colors.white,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
