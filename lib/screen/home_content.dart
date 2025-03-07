// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';

// class HomeContent extends StatelessWidget {
//   final bool isTtsEnabled;
//   final FlutterTts flutterTts;

//   const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

//   void _speakText(String text) {
//     if (isTtsEnabled) {
//       flutterTts.speak(text);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final bool isLargeScreen = screenWidth > 600;

//     return Container(
//       height: double.infinity,
//       width: screenWidth,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFF192655), Color(0xFF192655)],
//         ),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   GestureDetector(
//                     onTap: () => _speakText("Hello, User!"),
//                     child: const Text(
//                       "Hello, User!",
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   GestureDetector(
//                     onTap: () => _speakText("Get ready to test your knowledge!"),
//                     child: const Text(
//                       "Get ready to test your knowledge!",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white70,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: Data.categories.length,
//               padding: const EdgeInsets.all(15),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isLargeScreen ? 3 : 2, // Adjust grid for large screens
//                 childAspectRatio: isLargeScreen ? 1.5 : 1,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
//                     _speakText(category.name);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CategorySetScreen(category: category),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Image.asset(
//                             category.image,
//                             height: isLargeScreen ? 100 : 80,
//                             width: isLargeScreen ? 100 : 80,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           category.name,
//                           style: const TextStyle(
//                             fontSize: 22,
//                             color: Color(0xFF192655),
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';

// class HomeContent extends StatefulWidget {
//   final bool isTtsEnabled;
//   final FlutterTts flutterTts;

//   const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

//   @override
//   State<HomeContent> createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   late bool _isTtsEnabled;

//   @override
//   void initState() {
//     super.initState();
//     _isTtsEnabled = widget.isTtsEnabled;
//   }

//   void _speakText(String text) {
//     if (_isTtsEnabled) {
//       widget.flutterTts.speak(text);
//     }
//   }

//   @override
//   void didUpdateWidget(covariant HomeContent oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isTtsEnabled != widget.isTtsEnabled) {
//       setState(() {
//         _isTtsEnabled = widget.isTtsEnabled;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final bool isLargeScreen = screenWidth > 600;

//     return Container(
//       height: double.infinity,
//       width: screenWidth,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFF192655), Color(0xFF192655)],
//         ),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   GestureDetector(
//                     onTap: () => _speakText("Hello, User!"),
//                     child: const Text(
//                       "Hello, User!",
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   GestureDetector(
//                     onTap: () => _speakText("Get ready to test your knowledge!"),
//                     child: const Text(
//                       "Get ready to test your knowledge!",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white70,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: Data.categories.length,
//               padding: const EdgeInsets.all(15),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isLargeScreen ? 3 : 2, // Adjust grid for large screens
//                 childAspectRatio: isLargeScreen ? 1.5 : 1,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
//                     _speakText(category.name);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CategorySetScreen(category: category),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Image.asset(
//                             category.image,
//                             height: isLargeScreen ? 100 : 80,
//                             width: isLargeScreen ? 100 : 80,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           category.name,
//                           style: const TextStyle(
//                             fontSize: 22,
//                             color: Color(0xFF192655),
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';

// class HomeContent extends StatefulWidget {
//   final bool isTtsEnabled;
//   final FlutterTts flutterTts;

//   const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

//   @override
//   State<HomeContent> createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   late bool _isTtsEnabled;

//   @override
//   void initState() {
//     super.initState();
//     _isTtsEnabled = widget.isTtsEnabled;
//   }

//   void _speakText(String text) {
//     if (_isTtsEnabled) {
//       widget.flutterTts.speak(text);
//     }
//   }

//   @override
//   void didUpdateWidget(covariant HomeContent oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isTtsEnabled != widget.isTtsEnabled) {
//       setState(() {
//         _isTtsEnabled = widget.isTtsEnabled;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final bool isLargeScreen = screenWidth > 600;

//     return Container(
//       height: double.infinity,
//       width: screenWidth,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFF192655), Color(0xFF192655)],
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () => _speakText("Hello, User!"),
//                   child: const Text(
//                     "Hello, User!",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 GestureDetector(
//                   onTap: () => _speakText("Get ready to test your knowledge!"),
//                   child: const Text(
//                     "Get ready to test your knowledge!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: GridView.builder(
//               shrinkWrap: true,
//               padding: const EdgeInsets.all(15),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isLargeScreen ? 3 : 2, // Adjust grid for large screens
//                 childAspectRatio: isLargeScreen ? 1.5 : 1,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemCount: Data.categories.length,
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
//                     _speakText(category.name);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CategorySetScreen(category: category),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Flexible(
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Image.asset(
//                               category.image,
//                               height: isLargeScreen ? 100 : 80,
//                               width: isLargeScreen ? 100 : 80,
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Flexible(
//                           child: Text(
//                             category.name,
//                             style: const TextStyle(
//                               fontSize: 22,
//                               color: Color(0xFF192655),
//                               fontWeight: FontWeight.w600,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';

// class HomeContent extends StatefulWidget {
//   final bool isTtsEnabled;
//   final FlutterTts flutterTts;

//   const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

//   @override
//   State<HomeContent> createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   late bool _isTtsEnabled;

//   @override
//   void initState() {
//     super.initState();
//     _isTtsEnabled = widget.isTtsEnabled;
//   }

//   void _speakText(String text) {
//     if (_isTtsEnabled) {
//       widget.flutterTts.speak(text);
//     }
//   }

//   @override
//   void didUpdateWidget(covariant HomeContent oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isTtsEnabled != widget.isTtsEnabled) {
//       setState(() {
//         _isTtsEnabled = widget.isTtsEnabled;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final bool isLargeScreen = screenWidth > 600;

//     return Container(
//       height: double.infinity,
//       width: screenWidth,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFF192655), Color(0xFF192655)],
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () => _speakText("QuizByte"),
//                   child: const Text(
//                     "QuizByte",
//                     style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 GestureDetector(
//                   onTap: () => _speakText("Byte-sized quizzes big knowledge!"),
//                   child: const Text(
//                     "Byte-Sized Quizzes Big knowledge!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: GridView.builder(
//               padding: const EdgeInsets.all(15),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isLargeScreen ? 3 : 2,
//                 childAspectRatio: isLargeScreen ? 1.3 : 0.9,
//                 mainAxisSpacing: 12,
//                 crossAxisSpacing: 12,
//               ),
//               itemCount: Data.categories.length,
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
//                     _speakText(category.name);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CategorySetScreen(category: category),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(category.image, height: 80, fit: BoxFit.contain),
//                         const SizedBox(height: 10),
//                         Text(
//                           category.name,
//                           style: const TextStyle(
//                             fontSize: 22,
//                             color: Color(0xFF192655),
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';

// class HomeContent extends StatefulWidget {
//   final bool isTtsEnabled;
//   final FlutterTts flutterTts;

//   const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

//   @override
//   State<HomeContent> createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   late bool _isTtsEnabled;

//   @override
//   void initState() {
//     super.initState();
//     _isTtsEnabled = widget.isTtsEnabled;
//   }

//   void _speakText(String text) {
//     if (_isTtsEnabled) {
//       widget.flutterTts.speak(text);
//     }
//   }

//   @override
//   void didUpdateWidget(covariant HomeContent oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isTtsEnabled != widget.isTtsEnabled) {
//       setState(() {
//         _isTtsEnabled = widget.isTtsEnabled;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final bool isLargeScreen = screenWidth > 600;

//     return Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFF192655), Color(0xFF192655)],
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => _speakText("QuizByte"),
//                   child: const Text(
//                     "QuizByte",
//                     style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 GestureDetector(
//                   onTap: () => _speakText("Byte-sized quizzes big knowledge!"),
//                   child: const Text(
//                     "Byte-Sized Quizzes Big Knowledge!",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: GridView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: isLargeScreen ? 3 : 2,
//                 childAspectRatio: isLargeScreen ? 1.3 : 1.0,
//                 mainAxisSpacing: 12,
//                 crossAxisSpacing: 12,
//               ),
//               itemCount: Data.categories.length,
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
//                     _speakText(category.name);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CategorySetScreen(category: category),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(category.image, height: 80, fit: BoxFit.contain),
//                         const SizedBox(height: 10),
//                         Text(
//                           category.name,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontSize: 22,
//                             color: Color(0xFF192655),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:app_dev_final_project/data/data.dart';
import 'package:app_dev_final_project/screen/category_set_screen.dart';

class HomeContent extends StatefulWidget {
  final bool isTtsEnabled;
  final FlutterTts flutterTts;

  const HomeContent({super.key, required this.isTtsEnabled, required this.flutterTts});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  late bool _isTtsEnabled;

  @override
  void initState() {
    super.initState();
    _isTtsEnabled = widget.isTtsEnabled;
  }

  void _speakText(String text) {
    if (_isTtsEnabled) {
      widget.flutterTts.speak(text);
    }
  }

  @override
  void didUpdateWidget(covariant HomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isTtsEnabled != widget.isTtsEnabled) {
      setState(() {
        _isTtsEnabled = widget.isTtsEnabled;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLargeScreen = screenWidth > 600;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF192655), Color(0xFF192655)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _speakText("QuizByte"),
                  child: const Text(
                    "QuizByte",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () => _speakText("Byte-sized quizzes big knowledge!"),
                  child: const Text(
                    "Byte-Sized Quizzes Big Knowledge!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLargeScreen ? 3 : 2,
                childAspectRatio: isLargeScreen ? 1.3 : 1.0,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemCount: Data.categories.length,
              itemBuilder: (context, index) {
                final category = Data.categories[index];
                return InkWell(
                  onTap: () {
                    _speakText(category.name);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategorySetScreen(category: category),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(category.image, height: 80, fit: BoxFit.contain),
                        const SizedBox(height: 10),
                        Text(
                          category.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Color(0xFF192655),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
