import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buttn({color, soundNumber, alphabate}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text('$alphabate'),
        onPressed: () {
          //int n = int.parse(num);
          playSound(soundNumber);
        },
      ),
    );
  }

  int i = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buttn(color: Colors.red, soundNumber: 1, alphabate: 'C'),
                buttn(color: Colors.blue, soundNumber: 2, alphabate: 'D'),
                buttn(color: Colors.green, soundNumber: 3, alphabate: 'E'),
                buttn(color: Colors.brown, soundNumber: 4, alphabate: 'F'),
                buttn(color: Colors.orange, soundNumber: 5, alphabate: 'G'),
                buttn(color: Colors.pink, soundNumber: 6, alphabate: 'A'),
                buttn(color: Colors.purple, soundNumber: 7, alphabate: 'B'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
