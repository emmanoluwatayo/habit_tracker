import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProgressBarChart extends StatelessWidget {
  final List<String> labels;
  final Map<String, int> progress;

  const ProgressBarChart({
    super.key,
    required this.labels,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        barGroups: labels.asMap().entries.map((entry) {
          final index = entry.key;
          final label = entry.value;
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: (progress[label] ?? 0).toDouble(),
                color: Colors.blue,
              )
            ],
          );
        }).toList(),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                if (value.toInt() < labels.length) {
                  return Text(
                    labels[value.toInt()],
                    style: const TextStyle(fontSize: 10),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}
