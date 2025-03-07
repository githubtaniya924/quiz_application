import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CategorySetContent extends StatefulWidget {
  final String contentText;

  const CategorySetContent({super.key, required this.contentText});

  @override
  _CategorySetContentState createState() => _CategorySetContentState();
}

class _CategorySetContentState extends State<CategorySetContent> {
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
          "Content",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.contentText,
                  style: TextStyle(fontSize: 16, color: Color(0xFF192655)),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.volume_up, color: Color(0xFF192655), size: 30),
              onPressed: () => _speak(widget.contentText),
            ),
          ],
        ),
      ),
    );
  }
}
