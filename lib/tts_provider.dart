// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:app_dev_final_project/tts_provider.dart';
// import 'package:app_dev_final_project/screen/home_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => TtsProvider()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TtsProvider extends ChangeNotifier { // Ensure this extends ChangeNotifier
  final FlutterTts _flutterTts = FlutterTts();
  bool _isTtsEnabled = false;

  bool get isTtsEnabled => _isTtsEnabled;
  FlutterTts get flutterTts => _flutterTts;

  void toggleTts() {
    _isTtsEnabled = !_isTtsEnabled;
    notifyListeners();
    
    _flutterTts.speak(_isTtsEnabled ? "Audio assistance enabled." : "Audio assistance disabled.");
  }
}



// import 'package:flutter_tts/flutter_tts.dart';

// class TTSManager {
//   static final TTSManager _instance = TTSManager._internal();
//   factory TTSManager() => _instance;

//   final FlutterTts flutterTts = FlutterTts();
//   bool isTTSOn = false; // Default: OFF

//   TTSManager._internal();

//   void toggleTTS() {
//     isTTSOn = !isTTSOn;
//   }

//   Future<void> speak(String text) async {
//     if (isTTSOn) {
//       await flutterTts.speak(text);
//     }
//   }

//   void stopTTS() async {
//     await flutterTts.stop();
//   }
// }
