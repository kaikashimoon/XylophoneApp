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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.orange),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.teal),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
