// // import 'package:app_dev_final_project/model/model.dart';
// // import 'package:app_dev_final_project/screen/quiz_screen.dart';
// // import 'package:flutter/material.dart';


// // class ResultScreen extends StatelessWidget {
// //   final int totalQuestions;
// //   final int totalAttempts;
// //   final int totalCorrect;
// //   final int totalScore;
// //   final QuizSet quizSet;

// //   const ResultScreen({
// //     super.key,
// //     required this.totalQuestions,
// //     required this.totalAttempts,
// //     required this.totalCorrect,
// //     required this.totalScore,
// //     required this.quizSet,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     String feedback = totalScore < 30
// //         ? "You Failed"
// //         : totalScore < 60
// //             ? "Good!"
// //             : totalScore < 80
// //                 ? "Great!"
// //                 : "Awesome!";

// //     return Scaffold(
// //       body: Container(
// //         height: double.infinity,
// //         width: MediaQuery.of(context).size.width,
// //         decoration: const BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Colors.indigo, Colors.purple],
// //           ),
// //         ),
// //         child: SafeArea(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               const SizedBox(height: 20),

// //               // Back Button & Title
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 15),
// //                 child: Row(
// //                   children: [
// //                     InkWell(
// //                       onTap: () {
// //                         Navigator.pop(context);
// //                       },
// //                       child: const Icon(
// //                         Icons.arrow_back_ios,
// //                         color: Colors.white,
// //                         size: 30,
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10), // Added spacing
// //                     const Text(
// //                       "Quiz Result",
// //                       style: TextStyle(
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.w500,
// //                         color: Colors.white60,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               const SizedBox(height: 80),

// //               // Result Card
// //               Center(
// //                 child: Container(
// //                   width: MediaQuery.of(context).size.width * 0.8,
// //                   padding: const EdgeInsets.all(20),
// //                   decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.circular(15),
// //                   ),
// //                   child: Column(
// //                     children: [
// //                       Text(
// //                         feedback,
// //                         style: const TextStyle(
// //                           fontSize: 25,
// //                           fontWeight: FontWeight.w500,
// //                           color: Colors.black, // Fixed text color
// //                         ),
// //                       ),
// //                       const SizedBox(height: 10),
// //                       Text(
// //                         "$totalScore / $totalQuestions",
// //                         style: const TextStyle(
// //                           fontSize: 25,
// //                           fontWeight: FontWeight.w500,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 40),

// //                       // Repeat Quiz Button
// //                       InkWell(
// //                         onTap: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                               builder: (context) => QuizScreen(quizSet: quizSet),
// //                             ),
// //                           );
// //                         },
// //                         child: Container(
// //                           padding: const EdgeInsets.symmetric(
// //                               vertical: 12, horizontal: 24),
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(10),
// //                             gradient: const LinearGradient(
// //                               begin: Alignment.topCenter,
// //                               end: Alignment.bottomCenter,
// //                               colors: [Colors.indigo, Colors.purple],
// //                             ),
// //                           ),
// //                           child: const Text(
// //                             "Repeat",
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 16,
// //                               fontWeight: FontWeight.w500,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// // import 'package:app_dev_final_project/model/model.dart';
// // import 'package:app_dev_final_project/screen/quiz_screen.dart';
// // import 'package:flutter/material.dart';

// // class ResultScreen extends StatelessWidget {
// //   final int totalQuestions;
// //   final int totalCorrect;
// //   final List<int?> selectedAnswers;
// //   final QuizSet quizSet;

// //   const ResultScreen({
// //     super.key,
// //     required this.totalQuestions,
// //     required this.totalCorrect,
// //     required this.selectedAnswers,
// //     required this.quizSet,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     String feedback = totalCorrect < (totalQuestions * 0.3)
// //         ? "You Failed"
// //         : totalCorrect < (totalQuestions * 0.6)
// //             ? "Good!"
// //             : totalCorrect < (totalQuestions * 0.8)
// //                 ? "Great!"
// //                 : "Awesome!";

// //     return Scaffold(
// //       body: Container(
// //         height: double.infinity,
// //         width: MediaQuery.of(context).size.width,
// //         decoration: const BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Colors.indigo, Colors.purple],
// //           ),
// //         ),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 80),
// //             Text(feedback, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
// //             Text("$totalCorrect / $totalQuestions", style: const TextStyle(fontSize: 25)),

// //             const SizedBox(height: 40),

// //             ElevatedButton(
// //               onPressed: () {
// //                 Navigator.push(context, MaterialPageRoute(
// //                   builder: (context) => QuizScreen(quizSet: quizSet),
// //                 ));
// //               },
// //               child: const Text("Repeat Quiz"),
// //             ),

// //             const SizedBox(height: 20),

// //             ElevatedButton(
// //               onPressed: () {
// //                 // Navigate to a new screen to view correct answers
// //               },
// //               child: const Text("View Correct Answers"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:app_dev_final_project/model/model.dart';
// // import 'package:app_dev_final_project/screen/quiz_screen.dart';
// // import 'package:flutter/material.dart';

// // class ResultScreen extends StatelessWidget {
// //   final int totalQuestions;
// //   final int totalCorrect;
// //   final List<int?> selectedAnswers;
// //   final QuizSet quizSet;

// //   const ResultScreen({
// //     super.key,
// //     required this.totalQuestions,
// //     required this.totalCorrect,
// //     required this.selectedAnswers,
// //     required this.quizSet,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     String feedback = totalCorrect < (totalQuestions * 0.3)
// //         ? "You Failed"
// //         : totalCorrect < (totalQuestions * 0.6)
// //             ? "Good!"
// //             : totalCorrect < (totalQuestions * 0.8)
// //                 ? "Great!"
// //                 : "Awesome!";

// //     return Scaffold(
// //       body: Container(
// //         height: double.infinity,
// //         width: MediaQuery.of(context).size.width,
// //         decoration: const BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Colors.indigo, Colors.purple],
// //           ),
// //         ),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 80),
// //             Text(feedback, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
// //             Text("$totalCorrect / $totalQuestions", style: const TextStyle(fontSize: 25)),
// //             const SizedBox(height: 40),
// //             ElevatedButton(
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => QuizScreen(quizSet: quizSet)),
// //                 );
// //               },
// //               child: const Text("Repeat Quiz"),
// //             ),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => AnswerScreen(
// //                       quizSet: quizSet,
// //                       selectedAnswers: selectedAnswers,
// //                     ),
// //                   ),
// //                 );
// //               },
// //               child: const Text("View Correct Answers"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class AnswerScreen extends StatelessWidget {
// //   final QuizSet quizSet;
// //   final List<int?> selectedAnswers;

// //   const AnswerScreen({
// //     super.key,
// //     required this.quizSet,
// //     required this.selectedAnswers,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("Correct Answers")),
// //       body: ListView.builder(
// //         itemCount: quizSet.questions.length,
// //         itemBuilder: (context, index) {
// //           final question = quizSet.questions[index];
// //           return Card(
// //             margin: const EdgeInsets.all(10),
// //             child: Padding(
// //               padding: const EdgeInsets.all(10.0),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     question.question,
// //                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   Column(
// //                     children: List.generate(
// //                       question.options.length,
// //                       (optionIndex) {
// //                         bool isCorrect = optionIndex == question.correctIndex;
// //                         return Container(
// //                           margin: const EdgeInsets.symmetric(vertical: 5),
// //                           padding: const EdgeInsets.all(8),
// //                           decoration: BoxDecoration(
// //                             color: isCorrect ? Colors.green.withOpacity(0.6) : Colors.transparent,
// //                             border: Border.all(color: Colors.black54),
// //                             borderRadius: BorderRadius.circular(5),
// //                           ),
// //                           child: Row(
// //                             children: [
// //                               Icon(
// //                                 isCorrect ? Icons.check_circle : Icons.circle,
// //                                 color: isCorrect ? Colors.green : Colors.grey,
// //                               ),
// //                               const SizedBox(width: 10),
// //                               Expanded(child: Text(question.options[optionIndex])),
// //                             ],
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/home_screen.dart';
// import 'package:app_dev_final_project/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';

// class ResultScreen extends StatelessWidget {
//   final int totalQuestions;
//   final int totalCorrect;
//   final List<int?> selectedAnswers;
//   final QuizSet quizSet;

//   const ResultScreen({
//     super.key,
//     required this.totalQuestions,
//     required this.totalCorrect,
//     required this.selectedAnswers,
//     required this.quizSet,
//   });

//   @override
//   Widget build(BuildContext context) {
//     String feedback = totalCorrect < (totalQuestions * 0.3)
//         ? "You Failed"
//         : totalCorrect < (totalQuestions * 0.6)
//             ? "Good!"
//             : totalCorrect < (totalQuestions * 0.8)
//                 ? "Great!"
//                 : "Awesome!";

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF192655),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const HomeScreen()),
//             );
//           },
//         ),
//       ),
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Colors.white],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 50),
//             Text(
//               feedback,
//               style: const TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               "$totalCorrect / $totalQuestions",
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => QuizScreen(quizSet: quizSet)),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 foregroundColor: Color(0xFF192655),
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               child: const Text("Repeat Quiz"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AnswerScreen(
//                       quizSet: quizSet,
//                       selectedAnswers: selectedAnswers,
//                     ),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 foregroundColor: Color(0xFF192655),
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               child: const Text("View Correct Answers"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AnswerScreen extends StatelessWidget {
//   final QuizSet quizSet;
//   final List<int?> selectedAnswers;

//   const AnswerScreen({
//     super.key,
//     required this.quizSet,
//     required this.selectedAnswers,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Correct Answers"),
//         backgroundColor: Color(0xFF192655),
//       ),
//       body: ListView.builder(
//         itemCount: quizSet.questions.length,
//         itemBuilder: (context, index) {
//           final question = quizSet.questions[index];
//           return Card(
//             margin: const EdgeInsets.all(10),
//             color: Colors.white,
//             elevation: 3,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     question.question,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF192655),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Column(
//                     children: List.generate(
//                       question.options.length,
//                       (optionIndex) {
//                         bool isCorrect = optionIndex == question.correctIndex;
//                         return Container(
//                           margin: const EdgeInsets.symmetric(vertical: 5),
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: isCorrect ? Colors.green.withOpacity(0.6) : Colors.transparent,
//                             border: Border.all(color: Colors.black54),
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 isCorrect ? Icons.check_circle : Icons.circle,
//                                 color: isCorrect ? Colors.green : Colors.grey,
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(child: Text(question.options[optionIndex])),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// import 'dart:math';

// import 'package:app_dev_final_project/screen/answer_review_screen.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// class ResultScreen extends StatefulWidget {
//   final int totalQuestions;
//   final int totalCorrect;
//   final List<int?> selectedAnswers;
//   final QuizSet quizSet;

//   const ResultScreen({
//     super.key,
//     required this.totalQuestions,
//     required this.totalCorrect,
//     required this.selectedAnswers,
//     required this.quizSet,
//   });

//   @override
//   _ResultScreenState createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen> {
//   late ConfettiController _confettiController;
//   double _chartAnimationValue = 0;

//   @override
//   void initState() {
//     super.initState();
//     _confettiController = ConfettiController(duration: const Duration(seconds: 2));
//     Future.delayed(const Duration(milliseconds: 250), () {
//       setState(() {
//         _chartAnimationValue = 1;
//       });
//       if (widget.totalCorrect > (widget.totalQuestions * 0.5)) {
//         _confettiController.play();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     String feedback = widget.totalCorrect < (widget.totalQuestions * 0.3)
//         ? "You Failed"
//         : widget.totalCorrect < (widget.totalQuestions * 0.6)
//             ? "Good!"
//             : widget.totalCorrect < (widget.totalQuestions * 0.8)
//                 ? "Great!"
//                 : "Awesome!";

//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [Color(0xFF192655), Colors.white],
//               ),
//             ),
//             child: Column(
//               children: [
//                 const SizedBox(height: 80),
//                 Text(feedback, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
//                 Text("${widget.totalCorrect} / ${widget.totalQuestions}", style: const TextStyle(fontSize: 25, color: Colors.white)),

//                 const SizedBox(height: 40),
//                 AnimatedContainer(
//                   duration: const Duration(seconds: 1),
//                   height: 200 * _chartAnimationValue,
//                   child: PieChart(
//                     PieChartData(
//                       sections: [
//                         PieChartSectionData(
//                           color: Colors.green,
//                           value: widget.totalCorrect.toDouble(),
//                           title: "${widget.totalCorrect} Correct",
//                           radius: 50,
//                         ),
//                         PieChartSectionData(
//                           color: Colors.red,
//                           value: (widget.totalQuestions - widget.totalCorrect).toDouble(),
//                           title: "${widget.totalQuestions - widget.totalCorrect} Incorrect",
//                           radius: 50,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(
//                       builder: (context) => QuizScreen(quizSet: widget.quizSet),
//                     ));
//                   },
//                   child: const Text("Repeat Quiz"),
//                 ),

//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(
//                       builder: (context) => AnswerReviewScreen(quizSet: widget.quizSet, selectedAnswers: widget.selectedAnswers),
//                     ));
//                   },
//                   child: const Text("View Correct Answers"),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirection: -pi / 2,
//               emissionFrequency: 0.05,
//               numberOfParticles: 10,
//               gravity: 0.5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'dart:math';
// import 'package:app_dev_final_project/screen/answer_review_screen.dart';
// //import 'package:app_dev_final_project/screen/home_screen.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class ResultScreen extends StatefulWidget {
//   final int totalQuestions;
//   final int totalCorrect;
//   final List<int?> selectedAnswers;
//   final QuizSet quizSet;

//   const ResultScreen({
//     super.key,
//     required this.totalQuestions,
//     required this.totalCorrect,
//     required this.selectedAnswers,
//     required this.quizSet,
//   });

//   @override
//   _ResultScreenState createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen> {
//   late ConfettiController _confettiController;
//   late FlutterTts _flutterTts;
//   double _chartAnimationValue = 0;

//   @override
//   void initState() {
//     super.initState();
//     _confettiController = ConfettiController(duration: const Duration(seconds: 2));
//     _flutterTts = FlutterTts();
//     _announceResults();
//     Future.delayed(const Duration(milliseconds: 250), () {
//       setState(() {
//         _chartAnimationValue = 1;
//       });
//       if (widget.totalCorrect > (widget.totalQuestions * 0.5)) {
//         _confettiController.play();
//       }
//     });
//   }

//   Future<void> _announceResults() async {
//     String feedback = _getFeedback();
//     await _flutterTts.speak("Your score is ${widget.totalCorrect} out of ${widget.totalQuestions}. $feedback");
//   }

//   String _getFeedback() {
//     return widget.totalCorrect < (widget.totalQuestions * 0.3)
//         ? "You Failed"
//         : widget.totalCorrect < (widget.totalQuestions * 0.6)
//             ? "Good!"
//             : widget.totalCorrect < (widget.totalQuestions * 0.8)
//                 ? "Great!"
//                 : "Awesome!";
//   }

//   Future<void> _speak(String text) async {
//     await _flutterTts.speak(text);
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     _flutterTts.stop();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: MediaQuery.of(context).size.width,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [Color(0xFF192655), Colors.white],
//               ),
//             ),
//             child: Column(
//               children: [
//                 const SizedBox(height: 80),
//                 Text(_getFeedback(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
//                 Text("${widget.totalCorrect} / ${widget.totalQuestions}", style: const TextStyle(fontSize: 25, color: Colors.white)),

//                 const SizedBox(height: 40),
//                 AnimatedContainer(
//                   duration: const Duration(seconds: 1),
//                   height: 200 * _chartAnimationValue,
//                   child: PieChart(
//                     PieChartData(
//                       sections: [
//                         PieChartSectionData(
//                           color: Colors.green,
//                           value: widget.totalCorrect.toDouble(),
//                           title: "${widget.totalCorrect} Correct",
//                           radius: 50,
//                         ),
//                         PieChartSectionData(
//                           color: Colors.red,
//                           value: (widget.totalQuestions - widget.totalCorrect).toDouble(),
//                           title: "${widget.totalQuestions - widget.totalCorrect} Incorrect",
//                           radius: 50,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () {
//                     _speak("Restarting the quiz");
//                     Navigator.push(context, MaterialPageRoute(
//                       builder: (context) => QuizScreen(quizSet: widget.quizSet),
//                     ));
//                   },
//                   child: const Text("Repeat Quiz"),
//                 ),

//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     _speak("Viewing correct answers");
//                     Navigator.push(context, MaterialPageRoute(
//                       builder: (context) => AnswerReviewScreen(quizSet: widget.quizSet, selectedAnswers: widget.selectedAnswers),
//                     ));
//                   },
//                   child: const Text("View Correct Answers"),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirection: -pi / 2,
//               emissionFrequency: 0.05,
//               numberOfParticles: 10,
//               gravity: 0.5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'dart:math';
import 'package:app_dev_final_project/screen/answer_review_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:app_dev_final_project/model/model.dart';
import 'package:app_dev_final_project/screen/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ResultScreen extends StatefulWidget {
  final int totalQuestions;
  final int totalCorrect;
  final List<int?> selectedAnswers;
  final QuizSet quizSet;

  const ResultScreen({
    super.key,
    required this.totalQuestions,
    required this.totalCorrect,
    required this.selectedAnswers,
    required this.quizSet,
  });

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late ConfettiController _confettiController;
  late FlutterTts _flutterTts;
  double _chartAnimationValue = 0;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2));
    _flutterTts = FlutterTts();
    _announceResults();
    Future.delayed(const Duration(milliseconds: 250), () {
      setState(() {
        _chartAnimationValue = 1;
      });
      if (widget.totalCorrect > (widget.totalQuestions * 0.5)) {
        _confettiController.play();
      }
    });
  }

  Future<void> _announceResults() async {
    String feedback = _getFeedback();
    await _flutterTts.speak("Your score is ${widget.totalCorrect} out of ${widget.totalQuestions}. $feedback");
  }

  String _getFeedback() {
    return widget.totalCorrect < (widget.totalQuestions * 0.3)
        ? "You Failed"
        : widget.totalCorrect <= (widget.totalQuestions * 0.6)
            ? "Good!"
            : widget.totalCorrect <= (widget.totalQuestions * 0.8)
                ? "Great!"
                : "Awesome!";
  }

  Future<void> _speak(String text) async {
    await _flutterTts.speak(text);
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF192655), Colors.white],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(_getFeedback(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                Text("${widget.totalCorrect} / ${widget.totalQuestions}", style: const TextStyle(fontSize: 25, color: Colors.white)),

                const SizedBox(height: 40),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 200 * _chartAnimationValue,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: const Color.fromARGB(255, 122, 238, 126),
                          value: widget.totalCorrect.toDouble(),
                          title: "${widget.totalCorrect} Correct",
                          radius: 50,
                        ),
                        PieChartSectionData(
                          color: const Color.fromARGB(255, 243, 127, 119),
                          value: (widget.totalQuestions - widget.totalCorrect).toDouble(),
                          title: "${widget.totalQuestions - widget.totalCorrect} Incorrect",
                          radius: 50,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    _speak("Restarting the quiz");
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => QuizScreen(quizSet: widget.quizSet),
                    ));
                  },
                  child: const Text("Repeat Quiz"),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _speak("Viewing correct answers");
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AnswerReviewScreen(quizSet: widget.quizSet, selectedAnswers: widget.selectedAnswers),
                    ));
                  },
                  child: const Text("View Correct Answers"),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirection: -pi / 2,
              emissionFrequency: 0.05,
              numberOfParticles: 10,
              gravity: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
