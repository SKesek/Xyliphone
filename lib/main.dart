import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colorButton, int noteNumber, String sound) {
    return Expanded(
      child: Container(
        color: colorButton,
        child: TextButton(
          onPressed: () {
            playSound(noteNumber);
          },
          child: Text(
            sound,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
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
              buildKey(Colors.red, 1, 'DO'),
              buildKey(Colors.orange, 2, 'RE'),
              buildKey(Colors.yellow, 3, 'MI'),
              buildKey(Colors.green, 4, 'FA'),
              buildKey(Colors.teal, 5, 'SOL'),
              buildKey(Colors.blue, 6, 'LA'),
              buildKey(Colors.purple, 7, 'SI'),
              buildKey(Colors.deepPurple, 8, 'DO')
            ],
          ),
        ),
      ),
    );
  }
}
