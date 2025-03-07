import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalysisScreen extends StatelessWidget {
  final int totalQuestions;
  final int totalCorrect;

  const AnalysisScreen({
    super.key,
    required this.totalQuestions,
    required this.totalCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Performance Analysis"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              child: PieChart(
                PieChartData(
                  sections: _generateSections(),
                  sectionsSpace: 2,
                  centerSpaceRadius: 50,
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "$totalCorrect / $totalQuestions Correct",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _generateSections() {
    return [
      PieChartSectionData(
        value: totalCorrect.toDouble(),
        color: Colors.green,
        title: "$totalCorrect",
        radius: 60,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        value: (totalQuestions - totalCorrect).toDouble(),
        color: Colors.red,
        title: "${totalQuestions - totalCorrect}",
        radius: 60,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }
}
