import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsPieChart extends StatelessWidget {
  final Map<String, int> habitCompletionCounts;

  const StatisticsPieChart({
    super.key,
    required this.habitCompletionCounts,
  });

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: habitCompletionCounts.entries.map((entry) {
          final habit = entry.key;
          final count = entry.value;
          return PieChartSectionData(
            value: count.toDouble(),
            title: habit,
            color: Colors.primaries[
                habitCompletionCounts.keys.toList().indexOf(habit) %
                    Colors.primaries.length],
            titleStyle: const TextStyle(fontSize: 12, color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}
