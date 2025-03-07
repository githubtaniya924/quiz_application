// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:app_dev_final_project/screen/analysis_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     const HomeContent(),
//     const AnalysisScreen(totalQuestions: 0, totalCorrect: 0),
//     SudokuScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Colors.white,
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30, color: Color(0xFF192655)),
//           Icon(Icons.bar_chart, size: 30, color: Color(0xFF192655)),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28, color: Color(0xFF192655)),
//           Icon(Icons.person, size: 30, color: Color(0xFF192655)),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   const HomeContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: MediaQuery.of(context).size.width,
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
//                 children: const [
//                   Text(
//                     "Hello, User!",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Get ready to test your knowledge!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
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
//                 crossAxisCount: 2,
//                 childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
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
//                             height: 80,
//                             width: 80,
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



//final(second)non-accessibilyty code


// import 'package:app_dev_final_project/data/data.dart';
// import 'package:app_dev_final_project/screen/category_set_screen.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart'; // Import SignInScreen
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:app_dev_final_project/screen/analysis_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     const HomeContent(),
//     const AnalysisScreen(totalQuestions: 0, totalCorrect: 0),
//     SudokuScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF192655),
//         elevation: 0,
//         automaticallyImplyLeading: false, //Removes the default back arrow
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout, color: Colors.white),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => SignInScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30,),
//           Icon(Icons.bar_chart, size: 30,),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28,),
//           Icon(Icons.person, size: 30,),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   const HomeContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: MediaQuery.of(context).size.width,
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
//                 children: const [
//                   Text(
//                     "Hello, User!",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Get ready to test your knowledge!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white70,
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
//                 crossAxisCount: 2,
//                 childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemBuilder: (context, index) {
//                 final category = Data.categories[index];
//                 return InkWell(
//                   onTap: () {
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
//                             height: 80,
//                             width: 80,
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
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// //import 'package:app_dev_final_project/screen/category_set_screen.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/analysis_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   final List<Widget> _screens = [];

//   @override
//   void initState() {
//     super.initState();
//     _screens.addAll([
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       const AnalysisScreen(totalQuestions: 0, totalCorrect: 0),
//       SudokuScreen(),
//       ProfileScreen(),
//     ]);
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//     });

//     if (_isTtsEnabled) {
//       _flutterTts.speak("Audio assistance enabled.");
//     } else {
//       _flutterTts.speak("Audio assistance disabled.");
//     }

//     // Update screens with the new TTS state
//     _screens[0] = HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF192655),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//             icon: Icon(_isTtsEnabled ? Icons.volume_up : Icons.volume_off, color: Colors.white),
//             onPressed: _toggleTts,
//           ),
//           IconButton(
//             icon: const Icon(Icons.logout, color: Colors.white),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => SignInScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30,),
//           Icon(Icons.bar_chart, size: 30,),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28,),
//           Icon(Icons.person, size: 30,),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/analysis_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   final List<Widget> _screens = [];

//   @override
//   void initState() {
//     super.initState();
//     _screens.addAll([
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       const AnalysisScreen(totalQuestions: 0, totalCorrect: 0),
//       SudokuScreen(),
//       ProfileScreen(),
//     ]);
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//     });

//     if (_isTtsEnabled) {
//       _flutterTts.speak("Audio assistance enabled.");
//     } else {
//       _flutterTts.speak("Audio assistance disabled.");
//     }

//     // Update screens with the new TTS state
//     _screens[0] = HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF192655),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             Image.asset(
//               'assets/logo.png', // Ensure the logo is in the assets folder and added to pubspec.yaml
//               height: 40,
//             ),
//             const SizedBox(width: 10),
//             const Text(
//               "App Name", // Replace with actual app name
//               style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(_isTtsEnabled ? Icons.volume_up : Icons.volume_off, color: Colors.white),
//             onPressed: _toggleTts,
//           ),
//           IconButton(
//             icon: const Icon(Icons.logout, color: Colors.white),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => SignInScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: _screens[_currentIndex],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(Icons.bar_chart, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.person, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/analysis_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   late List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _initializeScreens();
//   }

//   void _initializeScreens() {
//     _screens = [
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       const AnalysisScreen(totalQuestions: 0, totalCorrect: 0),
//       SudokuScreen(),
//       const ProfileScreen(),
//     ];
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//       _initializeScreens(); // Reinitialize screens to pass updated TTS state
//     });

//     _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF192655),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             const SizedBox(width: 10),
//             Image.asset(
//               'assets/app_logo.png',
//               height: 150,
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(_isTtsEnabled ? Icons.volume_up : Icons.volume_off, color: Colors.white),
//             onPressed: _toggleTts,
//           ),
//           IconButton(
//             icon: const Icon(Icons.logout, color: Colors.white),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SignInScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: _screens[_currentIndex],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(Icons.bar_chart, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.person, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _currentIndex == 3
//           ? _buildSettingsMenu()
//           : Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: _getScreen(_currentIndex),
//             ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.person, size: 30),
//           Icon(Icons.settings, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             if (index == 3) {
//             } else {
//               _currentIndex = index;
//             }
//           });
//         },
//       ),
//     );
//   }

//   Widget _getScreen(int index) {
//     switch (index) {
//       case 0:
//         return HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts);
//       case 1:
//         return SudokuScreen();
//       case 2:
//         return const ProfileScreen();
//       default:
//         return Container();
//     }
//   }

//   Widget _buildSettingsMenu() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton.icon(
//             onPressed: _toggleTts,
//             icon: Icon(_isTtsEnabled ? Icons.volume_up : Icons.volume_off),
//             label: Text(_isTtsEnabled ? "Disable Audio Assistance" : "Enable Audio Assistance"),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton.icon(
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SignInScreen()),
//               );
//             },
//             icon: const Icon(Icons.logout),
//             label: const Text("Logout"),
//             style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
//           ),
//         ],
//       ),
//     );
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//     });
//     _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   late List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _initializeScreens();
//   }

//   void _initializeScreens() {
//     _screens = [
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       SudokuScreen(),
//       _buildSettingsScreen(),
//       const ProfileScreen(),
//     ];
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//     });
//     _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
//   }

//   Widget _buildSettingsScreen() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SwitchListTile(
//             title: const Text("Enable Audio Assistance", style: TextStyle(fontSize: 18)),
//             value: _isTtsEnabled,
//             onChanged: (value) => _toggleTts(),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton.icon(
//             icon: const Icon(Icons.logout),
//             label: const Text("Logout", style: TextStyle(fontSize: 18)),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SignInScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.settings, size: 30),
//           Icon(Icons.person, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   late List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _initializeScreens();
//   }

//   void _initializeScreens() {
//     _screens = [
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       SudokuScreen(),
//       const ProfileScreen(),
//     ];
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//       _initializeScreens();
//     });
//     _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             color: const Color(0xFF192655),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: Icon(
//                         _isTtsEnabled ? Icons.volume_up : Icons.volume_off,
//                         color: Colors.white,
//                       ),
//                       onPressed: _toggleTts,
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.logout, color: Colors.white),
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SignInScreen()),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: _screens[_currentIndex],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.person, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:app_dev_final_project/screen/home_content.dart';
// import 'package:app_dev_final_project/screen/profile_screen.dart';
// import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
// import 'package:app_dev_final_project/screen/signin_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   bool _isTtsEnabled = false;
//   final FlutterTts _flutterTts = FlutterTts();

//   late List<Widget> _screens;

//   @override
//   void initState() {
//     super.initState();
//     _initializeScreens();
//   }

//   void _initializeScreens() {
//     _screens = [
//       HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
//       SudokuScreen(),
//       const ProfileScreen(),
//     ];
//   }

//   void _toggleTts() {
//     setState(() {
//       _isTtsEnabled = !_isTtsEnabled;
//       _initializeScreens();
//     });
//     _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Top section with icons
//           Container(
//             width: double.infinity, // Ensure it stretches fully
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             color: const Color(0xFF192655),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end, // Align to top right
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     _isTtsEnabled ? Icons.volume_up : Icons.volume_off,
//                     color: Colors.white,
//                   ),
//                   onPressed: _toggleTts,
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.logout, color: Colors.white),
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignInScreen()),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
          
//           // Main Content
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: _screens[_currentIndex],
//             ),
//           ),
//         ],
//       ),
      
//       // Bottom Navigation Bar
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color(0xFF192655),
//         buttonBackgroundColor: Colors.white,
//         height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(Icons.home, size: 30),
//           Icon(FontAwesomeIcons.puzzlePiece, size: 28),
//           Icon(Icons.person, size: 30),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_dev_final_project/screen/home_content.dart';
import 'package:app_dev_final_project/screen/profile_screen.dart';
import 'package:app_dev_final_project/screen/sudoko_game_screen.dart';
import 'package:app_dev_final_project/screen/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  bool _isTtsEnabled = false;
  final FlutterTts _flutterTts = FlutterTts();

  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _initializeScreens();
  }

  void _initializeScreens() {
    _screens = [
      HomeContent(isTtsEnabled: _isTtsEnabled, flutterTts: _flutterTts),
      SudokuScreen(),
      const ProfileScreen(),
    ];
  }

  void _toggleTts() {
    setState(() {
      _isTtsEnabled = !_isTtsEnabled;
      _initializeScreens();
    });
    _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top section with icons (fixed width issue)
          Container(
            width: double.infinity,
            color: const Color(0xFF192655),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                IconButton(
                  icon: Icon(
                    _isTtsEnabled ? Icons.volume_up : Icons.volume_off,
                    color: Colors.white,
                  ),
                  onPressed: _toggleTts,
                ),
                IconButton(
                  icon: const Icon(Icons.logout, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    );
                  },
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: _screens[_currentIndex],
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color(0xFF192655),
        buttonBackgroundColor: Colors.white,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, size: 30, color: Color.fromARGB(255, 117, 116, 116)),
          Icon(FontAwesomeIcons.puzzlePiece, size: 28, color: Color.fromARGB(255, 117, 116, 116)),
          Icon(Icons.person, size: 30, color: Color.fromARGB(255, 117, 116, 116)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
