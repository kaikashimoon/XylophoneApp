import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.blue.shade100, soundNumber: 1),
              buildKey(color: Colors.blue.shade400, soundNumber: 2),
              buildKey(color: Colors.blue.shade100, soundNumber: 3),
              buildKey(color: Colors.blue.shade400, soundNumber: 4),
              buildKey(color: Colors.blue.shade100, soundNumber: 5),
              buildKey(color: Colors.blue.shade400, soundNumber: 6),
              buildKey(color: Colors.blue.shade100, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
