import 'dart:html';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech To Text',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SpeechScreen extends StatefulWidget {
  @Override
  _SpeechScreenState creatState() => _speechScreenState();
}

class _SpeechScreenstate extends State<SpeechScreen> {
  stt.SpeechToText _speech;
  bool _isLisitening = false;
  String _textSpeech = 'Press the button to start';

  @override
  void iniState() {
    super.iniState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Speech To Text ')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isLisitening,
      glowColor: Theme.of(context).primaryColor,
      endRadius: 80,
      duration: Duration(milliseconds:2000),
      repeatPauseDuration: Duration(milliseconds: 100),
      repeat: true,
      child: floatingActionButton(onPressed: (){},
      child: Icon(_isLisitening ? Icon.mic : Icons.mic_none,
      ),
      ),
          FloatingActionButton(onPressed: () {}, child: Icon(Icon.mic)),
    );
  }
}
