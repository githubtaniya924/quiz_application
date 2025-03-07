import 'package:flutter_tts/flutter_tts.dart';

class TTSManager {
  final FlutterTts _flutterTts = FlutterTts();
  bool _isTTSOn = false; // This should exist

  bool get isTTSOn => _isTTSOn; // Getter for isTTSOn

  Future<void> toggleTTS() async { // Method for toggleTTS
    _isTTSOn = !_isTTSOn;
    if (_isTTSOn) {
      await _flutterTts.speak("Text-to-speech enabled.");
    } else {
      await _flutterTts.stop();
    }
  }
}
