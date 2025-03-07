// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';

// //import 'package:quiz_application/screens/quiz_screen.dart';

// class CategorySetScreen extends StatelessWidget {
//   final Category category;

//   const CategorySetScreen({super.key, required this.category}); 

//   @override
//   Widget build(BuildContext context) {
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
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 35),

//               // Back Button & Title
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       }, // ✅ Added missing comma
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     ),
//                      // Added spacing
//                     Text(
//                       "${category.name} Quiz",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white60,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

            

//               // List of Quiz Sets
//               ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(), 
//                   itemCount: category.quizSets.length, //  Corrected variable name
//                   itemBuilder: (context, index) {
//                     final quizSet = category.quizSets[index]; //  Corrected variable name

//                     return Padding(
//                       padding: EdgeInsets.all(8),
//                       child: GestureDetector(
//                          onTap: () {
//                           Navigator.push(context, MaterialPageRoute(
//                             builder: (context)=>QuizScreen(quizSet: quizSet)
//                             )
//                             );
//                         },
//                         child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           child: Row(
//                             children: [
//                               Image.asset(
//                                 category.image,
//                                 height: 40,
//                                 width: 40,
//                               ),
//                               SizedBox(width: 20), 
//                               Text(
//                                 quizSet.name,
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),

//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:app_dev_final_project/model/model.dart';
// // import 'package:app_dev_final_project/screen/quiz_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:app_dev_final_project/tts_provider.dart';

// // class CategorySetScreen extends StatelessWidget {
// //   final Category category;

// //   const CategorySetScreen({super.key, required this.category});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: const Color(0xFF192655),
// //         title: Text(
// //           "${category.name} Quiz",
// //           style: const TextStyle(color: Colors.white),
// //         ),
// //         leading: IconButton(
// //           icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: Icon(
// //               ttsProvider.isTtsEnabled ? Icons.volume_up : Icons.volume_off,
// //               color: Colors.white,
// //             ),
// //             onPressed: ttsProvider.toggleTts,
// //           ),
// //         ],
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Color(0xFF192655), Colors.white],
// //           ),
// //         ),
// //         child: Padding(
// //           padding: EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Expanded(
// //                 child: ListView.builder(
// //                   itemCount: category.quizSets.length,
// //                   itemBuilder: (context, index) {
// //                     final quizSet = category.quizSets[index];
// //                     return Card(
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(15),
// //                       ),
// //                       elevation: 5,
// //                       margin: EdgeInsets.symmetric(vertical: 10),
// //                       child: ListTile(
// //                         contentPadding: EdgeInsets.all(16),
// //                         leading: CircleAvatar(
// //                           backgroundColor: Color(0xFF192655),
// //                           child: Image.asset(
// //                             category.image,
// //                             height: 30,
// //                             width: 30,
// //                           ),
// //                         ),
// //                         title: Text(
// //                           quizSet.name,
// //                           style: TextStyle(
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.w500,
// //                             color: Color(0xFF192655),
// //                           ),
// //                         ),
// //                         trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF192655)),
// //                         onTap: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(builder: (context) => QuizScreen(quizSet: quizSet)),
// //                           );
// //                         },
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:app_dev_final_project/model/model.dart';
// import 'package:app_dev_final_project/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';

// class CategorySetScreen extends StatelessWidget {
//   final Category category;

//   const CategorySetScreen({super.key, required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF192655),
//         title: Text(
//           "${category.name} Quiz",
//           style: TextStyle(color: Colors.white),
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Colors.white],
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: category.quizSets.length,
//                   itemBuilder: (context, index) {
//                     final quizSet = category.quizSets[index];
//                     return Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       elevation: 5,
//                       margin: EdgeInsets.symmetric(vertical: 10),
//                       child: ListTile(
//                         contentPadding: EdgeInsets.all(16),
//                         leading: CircleAvatar(
//                           backgroundColor: Color(0xFF192655),
//                           child: Image.asset(
//                             category.image,
//                             height: 30,
//                             width: 30,
//                           ),
//                         ),
//                         title: Text(
//                           quizSet.name,
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xFF192655),
//                           ),
//                         ),
//                         trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF192655)),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => QuizScreen(quizSet: quizSet)),
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }  


import 'package:app_dev_final_project/model/model.dart';
import 'package:app_dev_final_project/screen/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CategorySetScreen extends StatefulWidget {
  final Category category;

  const CategorySetScreen({super.key, required this.category});

  @override
  _CategorySetScreenState createState() => _CategorySetScreenState();
}

class _CategorySetScreenState extends State<CategorySetScreen> {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak(String text) async {
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192655),
        title: Text(
          "${widget.category.name} Quiz",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF192655), Colors.white],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: widget.category.quizSets.length,
                  itemBuilder: (context, index) {
                    final quizSet = widget.category.quizSets[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFF192655),
                          child: Image.asset(
                            widget.category.image,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          quizSet.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF192655),
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.volume_up, color: Color(0xFF192655)),
                              onPressed: () => _speak(quizSet.name),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF192655)),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizScreen(quizSet: quizSet)),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}