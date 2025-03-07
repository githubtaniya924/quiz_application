// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:intl/intl.dart';
// import 'analysis_screen.dart';

// class PerformanceDashboard extends StatefulWidget {
//   @override
//   _PerformanceDashboardState createState() => _PerformanceDashboardState();
// }

// class _PerformanceDashboardState extends State<PerformanceDashboard> {
//   List<int> correctHistory = [];
//   List<int> incorrectHistory = [];
//   List<String> activeDays = [];

//   @override
//   void initState() {
//     super.initState();
//     loadPerformance();
//   }

//   void loadPerformance() async {
//     var data = await AnalysisScreen.getPerformance();
//     correctHistory = data['correct_history']!.map(int.parse).toList();
//     incorrectHistory = data['incorrect_history']!.map(int.parse).toList();
//     activeDays = await AnalysisScreen.getActiveDays();
//     setState(() {});
//   }

//   List<FlSpot> getCorrectSpots() {
//     return List.generate(correctHistory.length, (index) => FlSpot(index.toDouble(), correctHistory[index].toDouble()));
//   }

//   List<FlSpot> getIncorrectSpots() {
//     return List.generate(incorrectHistory.length, (index) => FlSpot(index.toDouble(), incorrectHistory[index].toDouble()));
//   }

//   Widget buildDailyStreak() {
//     List<String> last7Days = List.generate(7, (index) {
//       DateTime date = DateTime.now().subtract(Duration(days: index));
//       return DateFormat('yyyy-MM-dd').format(date);
//     }).reversed.toList();

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: last7Days.map((day) {
//         bool isActive = activeDays.contains(day);
//         return Container(
//           margin: EdgeInsets.all(5),
//           width: 30,
//           height: 30,
//           decoration: BoxDecoration(
//             color: isActive ? Colors.green : Colors.grey[300],
//             shape: BoxShape.circle,
//           ),
//           child: Center(child: Text(DateFormat('d').format(DateTime.parse(day)), style: TextStyle(color: Colors.black))),
//         );
//       }).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Performance Dashboard")),
//       body: Column(
//         children: [
//           Text("Performance Graph", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           Expanded(
//             child: LineChart(
//               LineChartData(
//                 titlesData: FlTitlesData(show: true),
//                 borderData: FlBorderData(show: true),
//                 lineBarsData: [
//                   LineChartBarData(spots: getCorrectSpots(), isCurved: true, colors: [Colors.green], barWidth: 3),
//                   LineChartBarData(spots: getIncorrectSpots(), isCurved: true, colors: [Colors.red], barWidth: 3),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Text("Daily Streak", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           buildDailyStreak(),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
