// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';


// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.indigo, Colors.purple],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 35),

//             // Back Button & Title
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     widget.quizSet.name,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white60,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.all(16),
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       currentQuestion.question,
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 20),

//                     Column(
//                       children: currentQuestion.options.asMap().entries.map((entry) {
//                         final index = entry.key;
//                         final option = entry.value;
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedAnswers[currentQuestionIndex] = index;
//                             });
//                           },
//                           child: Container(
//                             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                             margin: EdgeInsets.symmetric(vertical: 8),
//                             decoration: BoxDecoration(
//                               color: selectedAnswers[currentQuestionIndex] == index
//                                   ? Colors.indigo
//                                   : Colors.white,
//                               border: Border.all(
//                                 width: 2,
//                                 color: selectedAnswers[currentQuestionIndex] == index
//                                     ? Colors.indigo
//                                     : Colors.grey,
//                               ),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 option,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: selectedAnswers[currentQuestionIndex] == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Buttons Row
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Back Button
//                   if (currentQuestionIndex > 0)
//                     ElevatedButton(
//                       onPressed: goToPreviousQuestion,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.black,
//                         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text(
//                         "Back",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),

//                   Spacer(),

//                   // Next/Submit Button
//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//                         goToNextQuestion();
//                       } else {
//                         // Calculate the score
//                         int totalCorrect = 0;
//                         for (int i = 0; i < widget.quizSet.questions.length; i++) {
//                           if (selectedAnswers[i] == widget.quizSet.questions[i].selectedIndex) {
//                             totalCorrect++;
//                           }
//                         }

//                         //Navigate to the result screen (Placeholder)
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ResultScreen(
//                               totalQuestions: widget.quizSet.questions.length,
//                               totalAttempts: widget.quizSet.questions.length,
//                               totalCorrect: totalCorrect,
//                               totalScore: totalCorrect,
//                               quizSet: widget.quizSet,),
//                           ),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: Text(
//                       currentQuestionIndex == widget.quizSet.questions.length - 1
//                           ? "Submit"
//                           : "Next",
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';

// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.indigo, Colors.purple],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 35),
//             // Back Button & Title
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     widget.quizSet.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white60,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.all(16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       currentQuestion.question,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     Column(
//                       children: currentQuestion.options.asMap().entries.map((entry) {
//                         final index = entry.key;
//                         final option = entry.value;
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedAnswers[currentQuestionIndex] = index;
//                             });
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                             margin: const EdgeInsets.symmetric(vertical: 8),
//                             decoration: BoxDecoration(
//                               color: selectedAnswers[currentQuestionIndex] == index
//                                   ? Colors.indigo
//                                   : Colors.white,
//                               border: Border.all(
//                                 width: 2,
//                                 color: selectedAnswers[currentQuestionIndex] == index
//                                     ? Colors.indigo
//                                     : Colors.grey,
//                               ),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 option,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: selectedAnswers[currentQuestionIndex] == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Buttons Row
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (currentQuestionIndex > 0)
//                     ElevatedButton(
//                       onPressed: goToPreviousQuestion,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.black,
//                       ),
//                       child: const Text("Back"),
//                     ),

//                   const Spacer(),

//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//                         goToNextQuestion();
//                       } else {
//                         int totalCorrect = 0;
//                         for (int i = 0; i < widget.quizSet.questions.length; i++) {
//                           if (selectedAnswers[i] == widget.quizSet.questions[i].correctIndex) {
//                             totalCorrect++;
//                           }
//                         }

//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ResultScreen(
//                               totalQuestions: widget.quizSet.questions.length,
//                               totalCorrect: totalCorrect,
//                               selectedAnswers: selectedAnswers,
//                               quizSet: widget.quizSet,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: Text(
//                       currentQuestionIndex == widget.quizSet.questions.length - 1
//                           ? "Submit"
//                           : "Next",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:app_dev_final_project/model/model.dart'; 
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';

// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF192655), Colors.white],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 35),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     widget.quizSet.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.all(16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       currentQuestion.question,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Column(
//                       children: currentQuestion.options.asMap().entries.map((entry) {
//                         final index = entry.key;
//                         final option = entry.value;
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedAnswers[currentQuestionIndex] = index;
//                             });
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                             margin: const EdgeInsets.symmetric(vertical: 8),
//                             decoration: BoxDecoration(
//                               color: selectedAnswers[currentQuestionIndex] == index
//                                   ? Color(0xFF192655)
//                                   : Colors.white,
//                               border: Border.all(
//                                 width: 2,
//                                 color: selectedAnswers[currentQuestionIndex] == index
//                                     ? Color(0xFF192655)
//                                     : Colors.grey,
//                               ),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 option,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: selectedAnswers[currentQuestionIndex] == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (currentQuestionIndex > 0)
//                     ElevatedButton(
//                       onPressed: goToPreviousQuestion,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.black,
//                       ),
//                       child: const Text("Back"),
//                     ),
//                   const Spacer(),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//                         goToNextQuestion();
//                       } else {
//                         int totalCorrect = 0;
//                         for (int i = 0; i < widget.quizSet.questions.length; i++) {
//                           if (selectedAnswers[i] == widget.quizSet.questions[i].correctIndex) {
//                             totalCorrect++;
//                           }
//                         }
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ResultScreen(
//                               totalQuestions: widget.quizSet.questions.length,
//                               totalCorrect: totalCorrect,
//                               selectedAnswers: selectedAnswers,
//                               quizSet: widget.quizSet,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: Text(
//                       currentQuestionIndex == widget.quizSet.questions.length - 1
//                           ? "Submit"
//                           : "Next",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:app_dev_final_project/model/model.dart'; 
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';

// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF192655), Colors.white],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 35),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     widget.quizSet.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.all(16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       currentQuestion.question,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Column(
//                       children: currentQuestion.options.asMap().entries.map((entry) {
//                         final index = entry.key;
//                         final option = entry.value;
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedAnswers[currentQuestionIndex] = index;
//                             });
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                             margin: const EdgeInsets.symmetric(vertical: 8),
//                             decoration: BoxDecoration(
//                               color: selectedAnswers[currentQuestionIndex] == index
//                                   ? Color(0xFF192655)
//                                   : Colors.white,
//                               border: Border.all(
//                                 width: 2,
//                                 color: selectedAnswers[currentQuestionIndex] == index
//                                     ? Color(0xFF192655)
//                                     : Colors.grey,
//                               ),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 option,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: selectedAnswers[currentQuestionIndex] == index
//                                       ? Colors.white
//                                       : Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (currentQuestionIndex > 0)
//                     ElevatedButton(
//                       onPressed: goToPreviousQuestion,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.black,
//                       ),
//                       child: const Text("Back"),
//                     ),
//                   const Spacer(),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//                         goToNextQuestion();
//                       } else {
//                         int totalCorrect = 0;
//                         for (int i = 0; i < widget.quizSet.questions.length; i++) {
//                           if (selectedAnswers[i] == widget.quizSet.questions[i].correctIndex) {
//                             totalCorrect++;
//                           }
//                         }
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ResultScreen(
//                               totalQuestions: widget.quizSet.questions.length,
//                               totalCorrect: totalCorrect,
//                               selectedAnswers: selectedAnswers,
//                               quizSet: widget.quizSet,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: Text(
//                       currentQuestionIndex == widget.quizSet.questions.length - 1
//                           ? "Submit"
//                           : "Next",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];
//   final FlutterTts flutterTts = FlutterTts();

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//     _speakCurrentQuestion();
//   }

//   void _speakCurrentQuestion() async {
//     String textToRead = widget.quizSet.questions[currentQuestionIndex].question;
//     await flutterTts.speak(textToRead);
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//       _speakCurrentQuestion();
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//       _speakCurrentQuestion();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color(0xFF192655), Colors.white],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 35),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     widget.quizSet.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: QuizContent(
//                 currentQuestion: currentQuestion,
//                 selectedAnswers: selectedAnswers,
//                 currentQuestionIndex: currentQuestionIndex,
//                 onSelectAnswer: (index) {
//                   setState(() {
//                     selectedAnswers[currentQuestionIndex] = index;
//                   });
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (currentQuestionIndex > 0)
//                     ElevatedButton(
//                       onPressed: goToPreviousQuestion,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.black,
//                       ),
//                       child: const Text("Back"),
//                     ),
//                   const Spacer(),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//                         goToNextQuestion();
//                       } else {
//                         int totalCorrect = 0;
//                         for (int i = 0; i < widget.quizSet.questions.length; i++) {
//                           if (selectedAnswers[i] == widget.quizSet.questions[i].correctIndex) {
//                             totalCorrect++;
//                           }
//                         }
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ResultScreen(
//                               totalQuestions: widget.quizSet.questions.length,
//                               totalCorrect: totalCorrect,
//                               selectedAnswers: selectedAnswers,
//                               quizSet: widget.quizSet,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: Text(
//                       currentQuestionIndex == widget.quizSet.questions.length - 1
//                           ? "Submit"
//                           : "Next",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class QuizContent extends StatelessWidget {
//   final Question currentQuestion;
//   final List<int?> selectedAnswers;
//   final int currentQuestionIndex;
//   final Function(int) onSelectAnswer;

//   const QuizContent({
//     super.key,
//     required this.currentQuestion,
//     required this.selectedAnswers,
//     required this.currentQuestionIndex,
//     required this.onSelectAnswer,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 10,
//             spreadRadius: 2,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             currentQuestion.question,
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 20),
//           Column(
//             children: currentQuestion.options.asMap().entries.map((entry) {
//               final index = entry.key;
//               final option = entry.value;
//               return GestureDetector(
//                 onTap: () => onSelectAnswer(index),
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                   margin: const EdgeInsets.symmetric(vertical: 8),
//                   decoration: BoxDecoration(
//                     color: selectedAnswers[currentQuestionIndex] == index
//                         ? Color(0xFF192655)
//                         : Colors.white,
//                     border: Border.all(
//                       width: 2,
//                       color: selectedAnswers[currentQuestionIndex] == index
//                           ? Color(0xFF192655)
//                           : Colors.grey,
//                     ),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: Center(
//                     child: Text(
//                       option,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: selectedAnswers[currentQuestionIndex] == index
//                             ? Colors.white
//                             : Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/result_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class QuizScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizScreen({super.key, required this.quizSet});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   int currentQuestionIndex = 0;
//   List<int?> selectedAnswers = [];
//   final FlutterTts flutterTts = FlutterTts();
//   bool isTTSOn = true;

//   @override
//   void initState() {
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//     _speakCurrentQuestion();
//   }

//   void _speakCurrentQuestion() async {
//     if (isTTSOn) {
//       String textToRead = widget.quizSet.questions[currentQuestionIndex].question;
//       await flutterTts.speak(textToRead);
//     } else {
//       await flutterTts.stop();
//     }
//   }

//   void toggleTTS() {
//     setState(() {
//       isTTSOn = !isTTSOn;
//       if (isTTSOn) {
//         _speakCurrentQuestion();
//       } else {
//         flutterTts.stop();
//       }
//     });
//   }

//   void goToNextQuestion() {
//     if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++;
//       });
//       _speakCurrentQuestion();
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuestionIndex > 0) {
//       setState(() {
//         currentQuestionIndex--;
//       });
//       _speakCurrentQuestion();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.quizSet.name),
//         actions: [
//           IconButton(
//             icon: Icon(isTTSOn ? Icons.volume_up : Icons.volume_off),
//             onPressed: toggleTTS,
//           ),
//         ],
//       ),
//       body: QuizContent(
//         currentQuestion: currentQuestion,
//         selectedAnswers: selectedAnswers,
//         currentQuestionIndex: currentQuestionIndex,
//         onSelectAnswer: (index) {
//           setState(() {
//             selectedAnswers[currentQuestionIndex] = index;
//           });
//         },
//         onNext: goToNextQuestion,
//         onPrevious: goToPreviousQuestion,
//         isLastQuestion: currentQuestionIndex == widget.quizSet.questions.length - 1,
//         onSubmit: () {
//           int totalCorrect = selectedAnswers.asMap().entries.where((entry) {
//             int i = entry.key;
//             return entry.value == widget.quizSet.questions[i].correctIndex;
//           }).length;

//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => ResultScreen(
//                 totalQuestions: widget.quizSet.questions.length,
//                 totalCorrect: totalCorrect,
//                 selectedAnswers: selectedAnswers,
//                 quizSet: widget.quizSet,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class QuizContent extends StatelessWidget {
//   final Question currentQuestion;
//   final List<int?> selectedAnswers;
//   final int currentQuestionIndex;
//   final Function(int) onSelectAnswer;
//   final VoidCallback onNext;
//   final VoidCallback onPrevious;
//   final VoidCallback onSubmit;
//   final bool isLastQuestion;

//   const QuizContent({
//     super.key,
//     required this.currentQuestion,
//     required this.selectedAnswers,
//     required this.currentQuestionIndex,
//     required this.onSelectAnswer,
//     required this.onNext,
//     required this.onPrevious,
//     required this.onSubmit,
//     required this.isLastQuestion,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             currentQuestion.question,
//             style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           Column(
//             children: currentQuestion.options.asMap().entries.map((entry) {
//               int index = entry.key;
//               String option = entry.value;
//               return GestureDetector(
//                 onTap: () => onSelectAnswer(index),
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                   margin: const EdgeInsets.symmetric(vertical: 8),
//                   decoration: BoxDecoration(
//                     color: selectedAnswers[currentQuestionIndex] == index
//                         ? Colors.blue
//                         : Colors.white,
//                     border: Border.all(
//                       width: 2,
//                       color: selectedAnswers[currentQuestionIndex] == index
//                           ? Colors.blue
//                           : Colors.grey,
//                     ),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: Center(
//                     child: Text(
//                       option,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: selectedAnswers[currentQuestionIndex] == index
//                             ? Colors.white
//                             : Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               if (currentQuestionIndex > 0)
//                 ElevatedButton(
//                   onPressed: onPrevious,
//                   child: const Text("Back"),
//                 ),
//               ElevatedButton(
//                 onPressed: isLastQuestion ? onSubmit : onNext,
//                 child: Text(isLastQuestion ? "Submit" : "Next"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:app_dev_final_project/model/model.dart';
import 'package:app_dev_final_project/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class QuizScreen extends StatefulWidget {
  final QuizSet quizSet;

  const QuizScreen({super.key, required this.quizSet});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<int?> selectedAnswers = [];
  final FlutterTts flutterTts = FlutterTts();
  bool isTTSOn = true;

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
    _speakCurrentQuestion();
  }

  void _speakCurrentQuestion() async {
    if (isTTSOn) {
      String textToRead = widget.quizSet.questions[currentQuestionIndex].question;
      await flutterTts.speak(textToRead);
    } else {
      await flutterTts.stop();
    }
  }

  void toggleTTS() {
    setState(() {
      isTTSOn = !isTTSOn;
      if (isTTSOn) {
        _speakCurrentQuestion();
      } else {
        flutterTts.stop();
      }
    });
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
      _speakCurrentQuestion();
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
      _speakCurrentQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192655),
        title: Text(widget.quizSet.name, style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(isTTSOn ? Icons.volume_up : Icons.volume_off, color: Colors.white),
            onPressed: toggleTTS,
          ),
        ],
      ),
      body: QuizContent(
        currentQuestion: currentQuestion,
        selectedAnswers: selectedAnswers,
        currentQuestionIndex: currentQuestionIndex,
        onSelectAnswer: (index) {
          setState(() {
            selectedAnswers[currentQuestionIndex] = index;
          });
        },
        onNext: goToNextQuestion,
        onPrevious: goToPreviousQuestion,
        isLastQuestion: currentQuestionIndex == widget.quizSet.questions.length - 1,
        onSubmit: () {
          int totalCorrect = selectedAnswers.asMap().entries.where((entry) {
            int i = entry.key;
            return entry.value == widget.quizSet.questions[i].correctIndex;
          }).length;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                totalQuestions: widget.quizSet.questions.length,
                totalCorrect: totalCorrect,
                selectedAnswers: selectedAnswers,
                quizSet: widget.quizSet,
              ),
            ),
          );
        },
      ),
    );
  }
}

class QuizContent extends StatelessWidget {
  final Question currentQuestion;
  final List<int?> selectedAnswers;
  final int currentQuestionIndex;
  final Function(int) onSelectAnswer;
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final VoidCallback onSubmit;
  final bool isLastQuestion;

  const QuizContent({
    super.key,
    required this.currentQuestion,
    required this.selectedAnswers,
    required this.currentQuestionIndex,
    required this.onSelectAnswer,
    required this.onNext,
    required this.onPrevious,
    required this.onSubmit,
    required this.isLastQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF192655)),
          ),
          const SizedBox(height: 20),
          Column(
            children: currentQuestion.options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              return GestureDetector(
                onTap: () => onSelectAnswer(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: selectedAnswers[currentQuestionIndex] == index
                        ? Color(0xFF192655)
                        : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: selectedAnswers[currentQuestionIndex] == index
                          ? Color(0xFF192655)
                          : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      option,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: selectedAnswers[currentQuestionIndex] == index
                            ? Colors.white
                            : Color(0xFF192655),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (currentQuestionIndex > 0)
                ElevatedButton(
                  onPressed: onPrevious,
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF192655)),
                  child: const Text("Back", style: TextStyle(color: Colors.white)),
                ),
              ElevatedButton(
                onPressed: isLastQuestion ? onSubmit : onNext,
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF192655)),
                child: Text(isLastQuestion ? "Submit" : "Next", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
